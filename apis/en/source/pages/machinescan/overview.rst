.. Copyright FUJITSU LIMITED 2016-2019

.. _machinescan-api-resources:

Machine Scan API Resources
==========================

	* :ref:`scanFileArchive-download`: Downloads an archive containing all the files found on file system after scanning a live system
	* :ref:`scanFileGetDelta`: Retrieves all the files added and modified on file system after scanning a live system
	* :ref:`scanFile-getAll`: Retrieves all the files found on file system after scanning a live system
	* :ref:`scanInstallProfile-get`: Retrieves the meta-data of the install profile from a scan
	* :ref:`scanOverlay-download`: Downloads the overlay archive
	* :ref:`scanOverlay-upload`: Uploads the overlay from the live system
	* :ref:`scanOverlay-uploadChunk`: Uploads the overlay from the live system
	* :ref:`scanPackageBinary-getAll`: Downloads a package binary
	* :ref:`scanPackageFile-get`: Retrieves the list of files from a native package found from a scan
	* :ref:`scanPackage-getAll`: Retrieves all the native package information from a scan report
	* :ref:`scanPartition-upload`: Uploads an entire file partition
	* :ref:`scanSync-create`: Creates a scanSync object
	* :ref:`scanSync-get`: Returns the meta-data of the scanSync object
	* :ref:`scanSync-getFiles`: Returns all full paths of files to be synchronized from a source to a target instance
	* :ref:`scan-cancel`: Cancels the current processing of the scan report
	* :ref:`scan-create`: Creates a new scan to a parent ``scanned instance``
	* :ref:`scan-delete`: Removes a scan from a parent ``scanned instance``
	* :ref:`scan-get`: Retrieves the meta-data of a scan
	* :ref:`scan-multipartCreate`: Creates a new scan to a parent ``scanned instance``
	* :ref:`scan-update`: Updates a scan object
	* :ref:`scannedInstanceScan-deleteAll`: Removes all the scans from a parent ``scanned instance``
	* :ref:`scannedInstanceScan-getAll`: Retrieves all the scans for a ``scanned instance``
	* :ref:`userScan-deleteAll`: Removes all the scans for the user
	* :ref:`userScan-getAll`: Retrieves all the scans belonging to a user


.. toctree::
    :hidden:

    scanFileArchive_download
    scanFileGetDelta
    scanFile_getAll
    scanInstallProfile_get
    scanOverlay_download
    scanOverlay_upload
    scanOverlay_uploadChunk
    scanPackageBinary_getAll
    scanPackageFile_get
    scanPackage_getAll
    scanPartition_upload
    scanSync_create
    scanSync_get
    scanSync_getFiles
    scan_cancel
    scan_create
    scan_delete
    scan_get
    scan_multipartCreate
    scan_update
    scannedInstanceScan_deleteAll
    scannedInstanceScan_getAll
    userScan_deleteAll
    userScan_getAll
