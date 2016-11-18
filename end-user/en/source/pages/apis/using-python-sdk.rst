.. Copyright 2016 FUJITSU LIMITED

.. _apis-python-sdk:

Using the Python SDK
====================

Download and Installing the SDK
-------------------------------

The Python API is supported on all major operating systems: Linux, Mac-OS, and Windows. The easiest way to install the API is using ``pip``, the widely used package management system for installing and managing software packages written in Python.

.. note:: This API is used by the open source Hammr project. You can find more examples on how to use the API in the source code of this project.

Installing pip
~~~~~~~~~~~~~~

If you already have ``pip`` installed on your system, you can skip this section.

To install or upgrade pip, download this file:: 

	https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py

Then run the command::

	$ python get-pip.py

For more information on installing pip, refer to the official pip documentation:
http://www.pip-installer.org/en/latest/installing.html

.. _python-sdk-install:

Installing UForge Python API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once ``pip`` has been installed, you can now install the UForge Python API packages. You may have to run this command as ``sudo`` or ``administrator``.

See below the instructions for installing the Python API for your target platform:

.. toctree::
   :maxdepth: 1

   python-install-linux
   python-install-mac
   python-install-windows

.. _python-sdk-uforge:

Communicating with UForge
-------------------------

The Python API provides all the lower level communication with UForge AppCenter by creating HTTP request packets with the header information to authenticate correctly.  

Normally the first step is to get the user information of the account being used to authenticate. The response provides the URIs to the organizations, appliances and software this user has access to. The code below shows how to recuperate the user information. Note, as UForge is completely RESTful, when the method ``login()`` is used, no session is created between the client and UForge. Each request will reuse the authentication information stored in this ``api`` instance.


.. code-block:: python

	# Import the Uforge python API
	from uforge.application import Api

	login='root'
	passwd='uforgedemo'

	# Create the API object
	api = Api(url = 'https://mylittleuforge.usharesoft.com/api',
		username = login, password = passwd,
		disable_ssl_certificate_validation = True)

	# Send a request (getting the user object)
	user = api.Users(login).Get()
	if user is not None:
	print user.loginName + ' - ' + user.email


.. note:: All UForge Python objects are in the file ``objects.py``, contained in the Python SDK. You can find all attribute names for each object type.

.. _python-create-template:

Creating an Appliance Template
------------------------------

An Appliance Template contains the model of the software stack. The model includes all the operating system packages, middleware and application software for generating an image that can be provisioned on a virtual or cloud platform. To create an appliance template, you need to decide which operating system to construct the template from, as well as the name and version.

When creating an appliance or choosing an operating system, you must choose the organization where to create the appliance or to search an operating system. The user must be a member of the organization to search the organization resources. 

The following code provides an example for constructing an appliance template. You will then need to add add an OS profile to the template. Refer to :ref:`python-create-osprofile`.

.. code-block:: python

	# Import the Uforge python API
	from uforge.application import Api
	from uforge.objects.uforge import *

	login='root'
	passwd='uforgedemo'

	# Create the API object
	api = Api(url = 'https://mylittleuforge.usharesoft.com/api',
	    username = login, password = passwd,
	    disable_ssl_certificate_validation = True)

	# all Orgs
	newOrg = api.Users(login).Orgs().Getall()
	#for i in newOrg.orgs.org:
	#    print i.uri + " - " + i.name

	# all Distributions
	newDistribution = api.Users(login).Distros.Getall()
	#for i in newDistribution.distributions.distribution:
	#    print i.uri + " - " + i.name + " " + i.version + " " + i.arch

	newAppliance = appliance()
	newAppliance.name = "app1testpythonsdk"
	newAppliance.version = "2.3"
	# Let's use first organization
	newAppliance.orgUri = newOrg.orgs.org[0].uri
	# Let's use first distribution
	newAppliance.distributionUri = newDistribution.distributions.distribution[0].uri

	# create appliance
	try:
	    createdAppliance = api.Users(login).Appliances.Create(newAppliance)
	except Exception as e:
	    print str(e.args[0].statusCode)+" "+e.args[0].localizedErrorMsg.message
	    sys.exit(1)
	print "Created appliance: " + createdAppliance.uri

.. _python-create-osprofile:

Adding an OS Profile to the Appliance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

An Appliance Template must contain an operating system profile. This profile contains a subset of operating system packages required by the middleware an application software to run correctly. Each operating system provided by UForge contains a set of standard operating system profile templates to choose from. These contain commonly used package bundles for the operating system to run, providing the basic operating system services.

The "Minimal" OS profile contains the minimum set of packages for the operating system to run properly and provide a minimum set of networking services and administration tools.

The following code shows how to create a new OS profile from a standard OS profile template and add it to an Appliance Template. The Appliance template must already be created, as described in :ref:`python-create-template`.

.. code-block:: python

	# List available osprofiles for this distribution to apply on appliance
	newProfile = api.Distributions(newDistribution.distributions.distribution[0].dbId).Profiles.Getall()
	newProfile = newProfile.distribProfileTemplates.distribProfileTemplate
	#for profile in newProfile:
	#    print profile.name
	print "Will set profile: " + newProfile[0].name + " - " + newProfile[0].uri

	newApplianceOSProfile = distribProfile()
	newApplianceOSProfile.standardProfileUri = newProfile[0].uri

	# apply os profile
	try:
	api.Users(login).Appliances(createdAppliance.dbId).Osprofile().Create(newApplianceOSProfile)
	except Exception as e:
	    print str(e.args[0].statusCode)+" "+e.args[0].localizedErrorMsg.message
	    sys.exit(1)
	print "Profile applied." 

.. _python-generate-machineimage:

Generating a Machine Image
~~~~~~~~~~~~~~~~~~~~~~~~~~

Once you are happy with the contents of an appliance template, you can then generate a machine image to practically any hypervisor or cloud environment. The following code generates a CloudStack VHD image (for Xen hypervisor). For some image types you can select the disk size and the RAM of the virtual machine to be created. These can be updated once provisioned in the cloud environment. If you have set advanced partitioning in the installation profile, then this will be used instead for the disk size. The generation is done asynchronously. 

.. code-block:: python

	# all target formats, search for VirtualBox
	newTargetFormat = api.Users(login).Targetformats.Getall()
	for i in newTargetFormat.targetFormats.targetFormat:
	#    print i.uri + " - " + i.name
	    if i.name == "VirtualBox":
	        print "VirtualBox target format found for user " + login + "."
	        break

	if i.name != "VirtualBox":
	    print "VirtualBox target format not found for user " + login + ", will not generate."
	    sys.exit(1)

	newImage = image()
	newImage.compress = "true"
	newTargetFormat = targetFormat()
	newTargetFormat.name = "VirtualBox"
	newImage.targetFormat = newTargetFormat
	newInstallProfile = installProfile()
	newInstallProfile.memorySize = 512
	newImage.installProfile = newInstallProfile

	# generate target Virtualbox
	try:
	api.Users(login).Appliances(createdAppliance.dbId).Images().Generate(newImage)
	except Exception as e:
	    print str(e.args[0].statusCode)+" "+e.args[0].localizedErrorMsg.message
	    sys.exit(1)
	print "Launched generation of appliance for VirtualBox target format."

.. _python-create-mysoftware:

Creating My Software
--------------------

In addition to projects and OSes, you can add your own personal software to an appliance. In order to do this, you must create a My Software container, add the packages (refer to :ref:`python-add-mysoftwarepkg`), and (optionally) add a license (refer to :ref:`python-add-mysoftwarelicence`). Once you have created the My Software, you can then add it to an appliance.

.. code-block:: python

	# Import the Uforge python API
	from uforge.application import Api
	from uforge.objects.uforge import *

	import os

	login='root'
	passwd='uforgedemo'

	# Create the API object
	api = Api(url = 'https://mylittleuforge.usharesoft.com/api',
		username = login, password = passwd,
		disable_ssl_certificate_validation = True)

	newMySoftware = mySoftware()
	newMySoftware.name = "newmstest"
	newMySoftware.version = "5.6"
	newMySoftware.description = "This is the description."

	try:
		createdMySoftware = api.Users(login).Mysoftware().Create(newMySoftware)
	except Exception as e:
		print str(e.args[0].statusCode)+"   "+e.args[0].localizedErrorMsg.message
		sys.exit(1)
	print "Created mysoftware: " + createdMySoftware.uri

.. _python-add-mysoftwarepkg:

Adding a Package to My Software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once you have created the My Software container, you can add packages (files) using the following code. For a list of supported file formats, refer to the list provided in :ref:`appliance-mysoftware`.

.. code-block:: python

	myNewPackage = package()
	myNewPackage.origName = "/etc/redhat-release"

	try:
		myNewPackage.size = os.stat(myNewPackage.origName).st_size 
	except Exception as e:
		print "Problem reading file " + myNewPackage.origName + ". Will not be added to mysoftware."
		sys.exit(1)

	# add package file to mysoftware
	try:
		api.Users(login).Mysoftware(createdMySoftware.dbId).Pkgs().Add(myNewPackage)
	except Exception as e:
		print str(e.args[0].statusCode)+"   "+e.args[0].localizedErrorMsg.message
		sys.exit(1)
	print "Added package file " + myNewPackage.origName + " to mysoftware."

.. _python-add-mysoftwarelicence:

Uploading a License to My Software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to add a license file to your software (optional), add the following code.

.. code-block:: python

	try:
		myLicenseFile = open("/etc/redhat-release")
	except Exception as e:
		print "Problem reading file " + myLicenseFile.name + ". Will not add license to mysoftware."
		sys.exit(1)

	# add license file to mysoftware
	try:
		api.Users(login).Mysoftware(createdMySoftware.dbId).Licenses(createdMySoftware.license.dbId).Uploadfile(myLicenseFile)
	except Exception as e:
		print str(e.args[0].statusCode)+"   "+e.args[0].localizedErrorMsg.message
		myLicenseFile.close()
		sys.exit(1)
	print "Added license file " + myLicenseFile.name + " to mysoftware."

	myLicenseFile.close()

Listing All My Software
~~~~~~~~~~~~~~~~~~~~~~~

You can list all your private software for your account as follows:

.. code-block:: python

	print "Listing all mysoftware:"
	# all MySoftware
	newMySoftware = api.Users(login).Mysoftware().Getall()
	for i in newMySoftware.mySoftwareList.mySoftware:
		print " ID " + str(i.dbId) + "   " + i.name + " v" + i.version + "    " + ("", "IMPORTED")[i.imported == True]

Creating a Project for a Specific OS
------------------------------------

You can also add third-party software to an appliance using projects. The catalog of projects is public to all users on UForge and is maintained by the privileged users and administrators.

.. code-block:: python

	# Import the Uforge python API
	from uforge.application import Api
	from uforge.objects.uforge import *

	login='root'
	passwd='uforgedemo'

	# Create the API object
	api = Api(url = 'https://mylittleuforge.usharesoft.com/api',
		username = login, password = passwd,
		disable_ssl_certificate_validation = True)

	# all Distributions
	newDistribution = api.Users(login).Distros.Getall()
	#for i in newDistribution.distributions.distribution:
	#	print i.uri + " - " + i.name + " " + i.version + " " + i.arch

	# all Organisations
	newOrg = api.Users(login).Orgs().Getall()

	# create a project for 1st distribution and 1st organisation
	newMyProject = project()
	newMyProject.name = "testnewproject"
	newMyProject.version = "1.9"
	newMyProject.release = "14"
	newMyProject.category = "Blogging"
	newMyProject.shortTag = "INTERNAL"
	newMyProject.description = "test new project description"
	newMyProject.company = company()
	newMyProject.company.name = "UShareSoft"
	newMyProject.license = license()
	newMyProject.license.type = "Custom"
	newMyProject.distributionUri = newDistribution.distributions.distribution[0].uri

	try:
		createdproject = api.Orgs(newOrg.orgs.org[0].dbId).Projects.Create(newMyProject)
	except Exception as e:
		print str(e.args[0].statusCode)+"   "+e.args[0].localizedErrorMsg.message
		sys.exit(1)
	print "Created project: " + createdproject.uri

Listing all Projects for a Specific OS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: python

	# listing all projects for same distribution
	print "Listing projects for distribution " + newDistribution.distributions.distribution[0].name + " " + \
		newDistribution.distributions.distribution[0].version + " " + \
		newDistribution.distributions.distribution[0].arch + ":"
	print "-v--------------------------------------------------------"
	newProjects = api.Distributions(newDistribution.distributions.distribution[0].dbId).Projects.Getall()
	for i in newProjects.projects.project:
		print " +-- " + i.uri + " - " + "\033[1m\033[93m" + i.name + " v" + i.version + " r" + \
			str(i.release) + "\033[0m" + "\t(tag: " + i.shortTag + ") (size: +" + str(i.size/1024/1024) + "MB)"
		print (" |","  ")[i == newProjects.projects.project[-1]] + "    path: " + i.defaultInstallLocation
		print (" |","  ")[i == newProjects.projects.project[-1]] + "    category: " + i.category + \
			"               maintainer: " + i.company.name
		if i.description:
			print (" |","  ")[i == newProjects.projects.project[-1]] + "    description: " + i.description

Listing Target Formats and Target Platforms
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: python

	# Import the Uforge python API
	from uforge.application import Api
	from uforge.objects.uforge import *

	login='root'
	passwd='uforgedemo'

	# Create the API object
	api = Api(url = 'https://mylittleuforge.usharesoft.com/api',
		username = login, password = passwd,
		disable_ssl_certificate_validation = True)

	# all Organisations
	newOrg = api.Users(login).Orgs().Getall()

	targetformatswithtargetplatform = []
	# all target platforms & target formats
	allTargetPlatforms = api.Orgs(newOrg.orgs.org[0].dbId).Targetplatforms().Getall()
	for i in allTargetPlatforms.targetPlatforms.targetPlatform:
		print i.uri + " \033[1m\033[93m" + i.name + ":\033[0m" + \
			" (type " + i.type + ") (" + \
			("not active, ","active, ")[i.active] + \
			("no access)","access)")[i.access]
			
		allTargetFormats = api.Orgs(newOrg.orgs.org[0].dbId).Targetplatforms(i.dbId).Targetformats().Getallformats()
		for u in allTargetFormats.targetFormats.targetFormat:
			targetformatswithtargetplatform.append(u.uri)
			print "     " + u.uri + " : \033[96m" + u.name + "\033[0m (type " + u.type + ") (" + \
				("not active, ","active, ")[u.active] + \
				("no access)","access)")[u.access]

	print "\033[1m\033[93mNo target platform:\033[0m"
	allTargetFormats = api.Orgs(newOrg.orgs.org[0].dbId).Targetformats().Getall()
	for u in allTargetFormats.targetFormats.targetFormat:
		if u.uri not in targetformatswithtargetplatform:
			print "     " + u.uri + " : \033[96m" + u.name + "\033[0m (type " + u.type + ") (" + \
			("not active, ","active, ")[u.active] + \
			("no access)","access)")[u.access]
