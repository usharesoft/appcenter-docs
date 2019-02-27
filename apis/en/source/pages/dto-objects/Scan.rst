.. Copyright FUJITSU LIMITED 2016-2019

.. _scan-object:

scan
====

Holds all the meta-data of a scan. This is the report information after scanning a live system.

Attributes
~~~~~~~~~~

The list of attributes for ``scan`` are:

	* ``images``: a list of :ref:`image-object` objects that have been generated from this scan report
	* ``imports``: a list of :ref:`scanimport-object` objects that have been imported from this scan report
	* ``unixServices``: a list of :ref:`unixservice-object` objects that represent Unix services on the scanned machine
	* ``winServices``: a list of :ref:`winservice-object` objects that represent Windows services on the scanned machine
	* ``winApplications``: a list of :ref:`winMsiApplication-object` and :ref:`winStoreApplication-object` objects that represent Windows applications on the scanned machine
	* ``packages``: the list of :ref:`package-object` objects listed in the scan report
	* ``binariesExtracted`` (boolean): a boolean flag determining of the overall has been extracted by the platform
	* ``binariesReceived`` (boolean): a boolean flag determining of the overall has been received by the platform
	* ``error`` (boolean): a boolean flag to indicate an error during the scan process
	* ``errorMsg`` (string): the error message
	* ``filesUri`` (anyURI): a uri resource to retrieve all the filesystem files reported by the scan process
	* ``imagesUri`` (anyURI): the uri resource to retrieve all the machine images generated from this scan report
	* ``osConfig`` (:ref:`osConfig-object`): `osconfig-object` of the scan
	* ``importsUri`` (anyURI): the uri resource to retrieve all the imports
	* ``goldenImportsUri`` (anyURI): the uri resource to retrieve all the golden imports
	* ``installProfile`` (:ref:`installProfile-object`): the install profile of the scanned system
	* ``installProfileUri`` (anyURI): the uri resource of the :ref:`installprofile-object`
	* ``scanSyncUri`` (anyURI): the uri resource of the :ref:`scansync-object`
	* ``name`` (string): the scan name
	* ``overlayCrc`` (string): the crc of the scan overlay archive
	* ``overlayImported`` (boolean): a boolean indicating whether the overlay has been imported on the platform
	* ``overlayUri`` (anyURI): the uri resource to upload the overlay
	* ``rawPartitionsUri`` (anyURI): the uri resource to upload the raw partitions (only for Windows source machines)
	* ``packagesUri`` (anyURI): the uri resource to retrieve all the meta data of the scanned packages
	* ``scanned`` (boolean): a boolean indicating if the scan report has been received from the scan agent on the source machine
	* ``scannedInstanceUri`` (anyURI): the uri of the parent scanned instance
	* ``status`` (:ref:`status-object`): the status of the scan
	* ``totalFilesAdded`` (int): the number of extra files found in the scan report
	* ``totalFilesDeleted`` (int): the number of files that have been deleted in source machine installed packages
	* ``totalFilesModified`` (int): the number of files that have been modified in the source machine installed packages
	* ``totalPackages`` (int): the number of native packages installed on the source machine
	* ``uncompressedBinarySize`` (long): the size of all the overlays
	* ``uri`` (anyURI): the uri of the scan
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


