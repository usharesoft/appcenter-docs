.. Copyright 2017 FUJITSU LIMITED

.. _machinescan-api-resources:

Machine Scan API Resources
==========================

	* :ref:`scan-create`: Creates a new scan to a parent ``scanned instance``
	* :ref:`scannedInstanceScan-deleteAll`: Removes all the scans from a parent ``scanned instance``
	* :ref:`scannedInstanceScan-getAll`: Retrieves all the scans for a ``scanned instance``
	* :ref:`scan-multipartCreate`: Creates a new scan to a parent ``scanned instance``
	* :ref:`scan-cancel`: Cancels the current processing of the scan report
	* :ref:`scan-get`: Retrieves the meta-data of a scan
	* :ref:`scan-delete`: Removes a scan from a parent ``scanned instance``
	* :ref:`scan-update`: Updates a scan object
	* :ref:`scanOverlay-download`: Downloads the overlay archive
	* :ref:`scanOverlay-uploadChunk`: Uploads the overlay from the live system
	* :ref:`scanOverlay-upload`: Uploads the overlay from the live system
	* :ref:`scanPartition-upload`: Uploads an entire file partition
	* :ref:`scanInstallProfile-get`: Retrieves the meta-data of the install profile from a scan
	* :ref:`scanPackage-getAll`: Retrieves all the native package information from a scan report
	* :ref:`scanPackageBinary-getAll`: Downloads a package binary
	* :ref:`scanPackageFile-get`: Retrieves the list of files from a native package found from a scan
	* :ref:`scanFileArchive-download`: Downloads an archive containing all the files found on file system after scanning a live system
	* :ref:`scanFile-getAll`: Retrieves all the files found on file system after scanning a live system
	* :ref:`userScan-getAll`: Retrieves all the scans belonging to a user
	* :ref:`userScan-deleteAll`: Removes all the scans for the user


.. toctree::
    :hidden:

    scan_create
    scannedInstanceScan_deleteAll
    scannedInstanceScan_getAll
    scan_multipartCreate
    scan_cancel
    scan_get
    scan_delete
    scan_update
    scanOverlay_download
    scanOverlay_uploadChunk
    scanOverlay_upload
    scanPartition_upload
    scanInstallProfile_get
    scanPackage_getAll
    scanPackageBinary_getAll
    scanPackageFile_get
    scanFileArchive_download
    scanFile_getAll
    userScan_getAll
    userScan_deleteAll
