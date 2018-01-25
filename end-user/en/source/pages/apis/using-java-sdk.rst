.. Copyright 2018 FUJITSU LIMITED

.. _apis-java-apis:

Using the Java SDK
==================

Download and Installing the SDK
-------------------------------

To use the UForge AppCenter Java API, you need the jar files. You can either download the jar bundle and then add the dependency jar files to your classpath, or use maven to handle all the dependencies by adding the following to your ``pom.xml`` file::

	<dependency>
	      <groupId>com.usharesoft</groupId>
	      <artifactId>uforge-client</artifactId>
	      <version>3.6</version>
	</dependency>
	
	<repository>
	        <id>maven.usharesoft.com</id>
	        <name>UShareSoft Repository</name>
	        <url>http://maven.usharesoft.com/repository/official/</url>
	        <layout>default</layout>
	</repository>

To use the API, you must have:

	* The base URL of the UForge AppCenter platform you will be communicating with, for example: ``https://factory.usharesoft.com:443``
	* An account on the UForge AppCenter platform you will be communicating with
	* An API key pair (secret and public) for the account (or use Basic Authentication)

Communicating with UForge
-------------------------

The ``UForgeConnector`` class provides all the lower level communication with UForge AppCenter by leveraging the `Jersey client API <http://jersey.java.net/>`_. This class creates HTTP packets with the correct header information and constructs the request URI to authenticate the request (using the secret and public keys). The response is parsed by JAXB to provide POJO Java classes of the response information.

Normally the first step is to get the user information of the account being used to authenticate. The response provides the URIs to the organizations, appliances and software this user has access to. The code below shows how to recuperate the user information. Note, as UForge is completely RESTful, when the method ``login()`` is used, no session is created between the client and UForge. Each request will reuse the authentication information stored in this ``UForgeConnector`` instance.

.. code-block:: java

	import com.usharesoft.client.common.connector.UForgeConnector;
	import com.usharesoft.client.common.objects.User;
	import org.apache.log4j.Logger;

	private static String UFORGE_BASE_URI = "https://factory.usharesoft.com:443";
	private static String USER_NAME = "myUser";
	public static String SECRET_API_KEY = "b9024Ox-N5jvPqzYw8I1fYvFRuSQv9sFuNM30gNAwZ4RqY5nOt2zPdB8XyOS2hp3oKB09-XsYbNr_e4apR";
	    
	public static String PUBLIC_API_KEY = "PHBowFEeRxX8D9KCDGNsNYErk2GvOqIepruLEIQzGKHZowfQtSgQNmIsBGRTvk6Y_4swVIV5BAPQRzwyZ1";

	UForgeConnector connector = new UForgeConnector(UFORGE_BASE_URI, USER_NAME, PUBLIC_API_KEY, SECRET_API_KEY);
	User me = connector.login();
	logger.info("Successfully connected to UForge. User: " + me.getLoginName());


Creating an Appliance Template
------------------------------

An Appliance Template contains the model of the software stack. The model includes all the operating system packages, middleware and application software for generating an image that can be provisioned on a virtual or cloud platform. To create an appliance template, you need to decide which operating system to build the template from, as well as the name and version.

When creating an appliance or choosing an operating system, you must choose the organization where to create the appliance or to search an operating system. The user must be a member of the organization to have authorization to search the organization resources. By default a user will be a member of at least one organization.

The following code provides an example of constructing an appliance template.

.. code-block:: java

	// require to have the organization information in the connector when getting distributions
	// and creating appliances
	// get the first organizaton of the user
	URI orgUri = me.getOrgUris().getUris().iterator().next();
	OrgDelegate orgDelegate = new OrgDelegate(connector);
	Org org = orgDelegate.get(orgUri);
	connector.setOrg(org);
	            
	// Use the connector holding the user authentication information to get 
	// the operating system to use for constructing the appliance template
	DistributionDelegate distributionDelegate = new DistributionDelegate(connector);
	Distribution distribution = distributionDelegate.get(Distribution.CENTOS_5_6_I386);

	// Create the appliance
	ApplianceDelegate applianceDelegate = new ApplianceDelegate(connector);
	Appliance appliance = new Appliance(distribution, "WordPress", "3.2.1");
	appliance = applianceDelegate.create(appliance);

Adding an OS Profile
--------------------

An Appliance Template must contain an operating system profile. This profile contains a subset of operating system packages required by the middleware and application software to run correctly. Each operating system provided by UForge contains a set of standard operating system profile templates to choose from. These contain commonly used package bundles for the operating system to run, providing the basic operating system services.

The "Minimal" OS profile contains the minimum set of packages for the operating system to run properly and provide a minimum set of networking services and administration tools.

The following code shows how to create a new OS profile from a standard OS profile template and add it to an Appliance Template.

.. code-block:: java

	// Get the minimum template from the distribution
	DistribProfileTemplate osProfileTemplate = distributionDelegate.getProfile(distribution, DistribProfile.MINIMAL);

	// Create the os profile that will be added to the appliance from the template
	DistribProfile osProfile = new DistribProfile(osProfileTemplate);
	osProfile.setDistribProfileTemplate(osProfileTemplate);

	// Create this os profile in the appliance
	ApplianceOSProfileDelegate aospDelegate = new ApplianceOSProfileDelegate(connector);
	osProfile = aospDelegate.create(this.appliance, osProfile);

Extra packages can be added to the appliance template's OS profile.

.. code-block:: java

	// Get the current list of packages in the os profile
	PkgList pkgs = aospDelegate.getPkgs(osProfile);

	// Add more packages
	// php53
	Pkg pkg = distributionDelegate.getPkg(distribution, "php53");
	if (pkg == null) {
	    logger.error("Unable to retrieve the package php53 for this distribution");
	    return;
	}
	pkgs.addExtraPackage(pkg);

	// php53-common
	pkg = distributionDelegate.getPkg(distribution, "php53-common");
	if (pkg == null) {
	    logger.error("Unable to retrieve the package php53-common for this distribution");
	    return;
	}
	pkgs.addExtraPackage(pkg);

	// php53-cli
	pkg = distributionDelegate.getPkg(distribution, "php53-cli");
	if (pkg == null) {
	    logger.error("Unable to retrieve the package php53-cli for this distribution");
	    return false;
	}
	pkgs.addExtraPackage(pkg);

	// php53-mysql
	pkg = distributionDelegate.getPkg(distribution, "php53-mysql");
	if (pkg == null) {
	    logger.error("Unable to retrieve the package php53-mysql for this distribution");
	    return false;
	}
	pkgs.addExtraPackage(pkg);
	   
	// update the os profile with the new package list
	aospDelegate.updatePkgs(osProfile, pkgList);  


Generating a Machine Image
--------------------------

Once you are happy with the contents of an appliance template, you can then generate a machine image to practically any hypervisor or cloud environment. The following code generates a CloudStack VHD image (for Xen hypervisor). For some image types you can select the disk size and the RAM of the virtual machine to be created. These can be updated once provisioned in the cloud environment. If you have set advanced partitioning in the installation profile, then this will be used instead for the disk size. The generation is done asynchronously; the generation status gives the progress of this generation.

.. code-block:: java

	ImageDelegate imageDelegate = new ImageDelegate(connector);
	Image image = new Image(appliance, ImageFormat.CLOUDCOM_VHD_FORMAT;);
	image.setCompress(true);   // create an archive (.gz)
	image.setVmDiskSize(4096); // 4GB
	image.setVmMemorySize(256); // 256MB

	// Launch the generation
	image = imageDelegate.generate(appliance, image);

	// Check the generation status every 5 seconds
	OpStatus status = imageDelegate.getStatus(image);
	while ( status.isComplete() == false ) {
	    try {
	        Thread.sleep(5000);
	    } catch (InterruptedException ex) {
	        //Error in a thread while trying to get the status of the cloud.com image generation
	    }
	    // Get the status
	    status = imageDelegate.getStatus(image);
	}

	// Generation complete!

Publishing an Image
-------------------

UForge has connectors to many of the popular cloud platforms including Amazon, Microsoft Azure, Google Compute Engine, OpenStack, CloudStack, Eucalyptus and Flexiant to name a few. Once an image has been generated you can either download the image or publish directly to a cloud environment using your own cloud account credentials. Like generations, publishing images is asynchronous. You can get the progress of the publish from the publish status. The following code publishes a generated VHD image directly to the template library of a CloudStack environment.

.. code-block:: java

	// Create the credential information to communicate with the Cloud.com environment
	CredAccount credAccount = new CredAccount();
	credAccount.setType(InfraType.CLOUD_COM);
	credAccount.setName("My Cloud.Com Account");
	credAccount.setServerUrl(new URI("http://10.0.1.251:8080/client/api"));
	credAccount.setPublicAPIKey("8pqqg0HV8ocpt6j8qYiCpDZ4cqzbtLaxCErIOpCD0r9VOjnILgahX85_J2CFvC8863en3NGZEFIlY82PKbAfWQ");
	credAccount.setSecretAPIKey("9Q-vVxokmMbI_l4t7aAfbocTgoLBlnt41Xy6iLZUfC6PzAdXNy2rRegAWhBMF3mQ9jk4MtPaCVULDu7ORxX2ZQ");

	// Add the zone on where the image should be published
	credAccount.setZoneName("zone1");

	// Provide information on the image being uploaded to the Cloud.com template library
	credAccount.setDisplayName("WordPress image");
	credAccount.setDescription("WordPress image for the cloud.com platform");
	credAccount.setPasswordEnabled(true);
	credAccount.setFeaturedEnabled(false);

	// Allow this image to be accessed to all cloud.com users
	credAccount.setPublicImage(true);  

	// Publish the image
	PublishDelegate publishDelegate = new PublishDelegate(connector);
	PublishImage publishImage = new PublishImage();
	publishImage.setCredAccount(credAccount);
	publishImage.setImage(image);
	publishImage = publishDelegate.publish(appliance, publishImage);

	// Get the status of the publish
	OpStatus status = publishDelegate.getStatus(publishImage);
	while (status.isComplete() == false) {
	    try {
	        Thread.sleep(5000);
	    } catch (InterruptedException ex) {
	        // Error in a thread while trying to get the status of the iso image generation
	    }
	    // get the status
	    status = publishDelegate.getStatus(publishImage);
	}

	// Publish finished
	// Can check for errors
	if (status.isError()) {
	    // error occurred during the publish
	}   

Adding a Project from the Project Catalog
-----------------------------------------

Each UForge organization provides a Project Catalog where commonly used software components can be added to an appliance template. The Project Catalog must belong to the same organization as the appliance. The following code adds some projects to an appliance template.

.. code-block:: java

	ProjectDelegate projectDelegate = new ProjectDelegate(connector);

	// Add Apache HTTP Server
	Project project = projectDelegate.get(distribution, "Apache HTTP server", "2.2.3", null);
	if (project == null) {
	    logger.error("Unable to retrieve project");
	    return;
	}
	appliance.addProject(project);

	// Add MySQL
	Project project = projectDelegate.get(distribution, "MySQL5 Server", "5.0.77", null);
	if (project == null) {
	    logger.error("Unable to retrieve project");
	    return;
	}
	appliance.addProject(project);

	// Save the updated appliance instance
	applianceDelegate.update(appliance);

Uploading a Software Component
------------------------------

You can upload your own software components to a private software library (``My Software Library``). This software can then be added to any of your appliance templates. This provides a mechanism to compliment the Project Catalog. The following code shows how to upload files, attach a license and then add it to an appliance template.

.. code-block:: java

	MySoftwareDelegate mySoftwareDelegate = new MySoftwareDelegate(connector);
	File wpf = new File("wordpress-3.2.1.zip");
	File lf = new File("wp-license.html");

	// Create a My Software component and upload the wordpress zip file
	MySoftware mySoftware = mySoftwareDelegate.upload("WordPress", "3.2.1", wpf);

	// Attach a license
	mySoftware = mySoftwareDelegate.uploadLicense(mySoftware, lf);

	// Add the software component to the appliance
	appliance.addMySoftware(mySoftware);

	// Save the changes to the appliance
	applianceDelegate.update(appliance);

Adding a Boot Script
--------------------

Boot scripts can be added to the appliance template allowing initial configuration to be executed either during the first time the image is started or during every boot of the image. 

The following code shows how to upload a boot script to an appliance.

.. code-block:: java

	ApplianceConfigDelegate configDelegate = new ApplianceConfigDelegate(connector);

	// upload a boot script to the appliance
	File bsf = new File("myscript.sh");
	BootScript bootscript = new BootScript();
	// only execute this boot script once during first boot
	bootscript.setBootType(BootScript.FIRST_BOOT); 
	bootscript = configDelegate.uploadBootScript(appliance, bootscript, bsf);
