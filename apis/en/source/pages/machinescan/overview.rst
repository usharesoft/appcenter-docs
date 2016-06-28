.. Copyright 2016 FUJITSU LIMITED

.. _machinescan-api-resources:

Machine Scan API Resources
==========================

	* :ref:`scanFile-getAll`: Retrieves all the files found on file system after scanning a live system
	* :ref:`scanFileArchive-download`: Downloads an archive containing all the files found on file system after scanning a live system
	* :ref:`scan-getAll`: Retrieves all the scans belonging to a user
	* :ref:`userScan-deleteAll`: Removes all the scans for the user
	* :ref:`scannedInstanceScan-getAll`: Retrieves all the scans for a ``scanned instance``
	* :ref:`scan-multipartCreate`: Creates a new scan to a parent ``scanned instance``
	* :ref:`scan-create`: Creates a new scan to a parent ``scanned instance``
	* :ref:`scannedInstanceScan-deleteAll`: Removes all the scans from a parent ``scanned instance``
	* :ref:`scan-cancel`: Cancels the current processing of the scan report
	* :ref:`scan-get`: Retrieves the meta-data of a scan
	* :ref:`scan-delete`: Removes a scan from a parent ``scanned instance``
	* :ref:`scanInstallProfile-get`: Retrieves the meta-data of the install profile from a scan
	* :ref:`scanOverlay-download`: Downloads the overlay archive
	* :ref:`scanOverlay-uploadChunk`: Uploads the overlay from the live system
	* :ref:`scanOverlay-upload`: Uploads the overlay from the live system
	* :ref:`scanPartition-upload`: Uploads an entire file partition
	* :ref:`scanPackage-getAll`: Retrieves all the native package information from a scan report
	* :ref:`scanPackageBinary-getAll`: Downloads a package binary
	* :ref:`scanPackageFile-get`: Retrieves the list of files from a native package found from a scan


.. toctree::
    :hidden:

    scanFile_getAll
    scanFileArchive_download
    scan_getAll
    userScan_deleteAll
    scannedInstanceScan_getAll
    scan_multipartCreate
    scan_create
    scannedInstanceScan_deleteAll
    scan_cancel
    scan_get
    scan_delete
    scanInstallProfile_get
    scanOverlay_download
    scanOverlay_uploadChunk
    scanOverlay_upload
    scanPartition_upload
    scanPackage_getAll
    scanPackageBinary_getAll
    scanPackageFile_get
