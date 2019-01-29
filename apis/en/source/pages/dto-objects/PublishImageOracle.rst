.. Copyright FUJITSU LIMITED 2016-2019

.. _publishimageoracle-object:

PublishImageOracle
==================

Holds the information on the registration of a machine image to the Oracle Cloud environment.

Attributes
~~~~~~~~~~

The list of attributes for ``PublishImageOracle`` are:

	* ``computeEndPoint`` (string): the compute EndPoint URL to use when publishing the machine image
	* ``displayName`` (string): the public name of the machine image
	* ``cloudId`` (string): the unique id for the machine image registered on the cloud environment
	* ``imageUri`` (anyURI): the uri resource of the machine image
	* ``publishLocation`` (string): the location of the registered machine image (e.g. region)
	* ``parentUri`` (anyURI): the uri resource of the parent object this machine image was generated from
	* ``basePublishImagesUri`` (anyURI): the uri resource to retrieve all the published machine images information (see :ref:`publishimage-object`)
	* ``completeInstalledSize`` (long): estimated disk size to install the machine image (in bytes)
	* ``completeSize`` (long): the size (in bytes) of the machine image
	* ``compress`` (boolean): a boolean flag to determine if this machine image has been compressed
	* ``credAccount`` (:ref:`credAccount-object`): the cloud account object related to this machine image (see :ref:`credaccount-object`)
	* ``distributionName`` (string): the operating system name this machine image is built upon or requires to run
	* ``downloadKey`` (string): the unique download key to download the machine image without authentication (can only be used once)
	* ``downloadUri`` (anyURI): the uri resource to download the machine image
	* ``ebs`` (boolean): a boolean flag to determine if this machine image should use an EBS volume
	* ``ebsVolumeSize`` (int): size of the EBS volume size
	* ``fileExtension`` (string): the file extension of the machine image
	* ``fileName`` (string): the file name of the machine image
	* ``fileSize`` (long): the download size of the machine image (in bytes)
	* ``format`` (:ref:`imageFormat-object`): the primitive format of this machine image
	* ``targetFormat`` (:ref:`targetFormat-object`): the external format of this machine image
	* ``fullName`` (string): the complete file name of the machine image
	* ``imageCreated`` (boolean): the date this machine im age was generated
	* ``installProfile`` (:ref:`installProfile-object`): the install profile information of this machine image (see :ref:`installprofile-object`)
	* ``name`` (string): the name of this machine image
	* ``orgUri`` (anyURI): the uri resource of the organization where this machine image is stored
	* ``pkgsUri`` (anyURI): the uri resource to retrieve all the native packages for this machine image (includes packages added after package dependencies have been calculated)
	* ``revision`` (int): the revision number of this machine image
	* ``simulated`` (boolean): a boolean to indicate whether a dependency checking simulation has been run to determine the definite list of native packages
	* ``statusUri`` (anyURI): the uri resource to retrieve the current generation status
	* ``tag`` (string): the tag name for this machine image
	* ``updateTools`` (boolean): a boolean specific for AWS to determine if AWS should have the ability to update its tools automatcially of a provisioned system from this machine image
	* ``uri`` (anyURI): the uri resource of this machine image
	* ``version`` (string): the version of this machine image
	* ``vmDiskSize`` (long): the recommended disk size (in bytes) to use when provisioning an instance from this machine image
	* ``vmMemorySize`` (int): the recommended memory size (in bytes) to use when provisioning an instance from this machine image
	* ``forceCheckingDeps`` (boolean): a boolean flag to enforce checking dependencies during the generation of this machine image
	* ``entrypoint`` (string): the Entrypoint of a Docker machine image
	* ``md5sum`` (string): the md5sum of the uploaded object
	* ``mimeType`` (string): the mime type of the file uploaded
	* ``sha256sum`` (string): the sha256 value of the uploaded object
	* ``size`` (long): the size (in bytes) of the uploaded object
	* ``status`` (:ref:`status-object`): the upload status (see :ref:`status-object`)
	* ``uploaded`` (boolean): a boolean to indicate if the file has been uploaded
	* ``uploadedTime`` (dateTime): the timestamp the upload was completed
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


