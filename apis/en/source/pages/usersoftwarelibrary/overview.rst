.. Copyright 2016 FUJITSU LIMITED

.. _usersoftwarelibrary-api-resources:

User Software Library API Resources
===================================

	* :ref:`mySoftwareLogo-download`: Downloads the logo file for the specified mysoftware
	* :ref:`mySoftwareLogo-delete`: 
	* :ref:`mySoftwareLogo-downloadFile`: Downloads the logo file for the specified mysoftware
	* :ref:`mySoftwareLogo-upload`: Uploads a logo file for the specified software component
	* :ref:`mySoftware-create`: Creates a new software component in a user's ``Software library``
	* :ref:`mySoftware-getAll`: Gets all the user's software components from their ``Software Library``
	* :ref:`mySoftware-get`: Gets the information for a software component in a user's ``Software Library``
	* :ref:`mySoftware-update`: Updates the meta-data information of a software component
	* :ref:`mySoftware-delete`: Removes a software component from a user's ``Software Library``
	* :ref:`mySoftwareUsage-getAll`: Retrieves all the appliance templates where a software component is includes
	* :ref:`mySoftwareOs-getAll`: Retrieves all the distributions where a software component can be used
	* :ref:`mySoftware-clone`: Clones a new "My Software" object
	* :ref:`mySoftwareLicense-upload`: Uploads a license file for a software component
	* :ref:`mySoftwareLicense-download`: Downloads the license of a software component
	* :ref:`mySoftwareLicense-delete`: Remove a license file from a software component
	* :ref:`mySoftwareLicense-uploadFile`: Uploads a license file for a software component
	* :ref:`mySoftwareArtifact-add`: Adds a new software artifact to a software component
	* :ref:`mySoftwareArtifact-getAll`: Retrieves all software artifacts and files for a software component
	* :ref:`mySoftwareArtifact-updateAll`: Updates the information of a set of artifact contained in a software component
	* :ref:`mySoftwareArtifact-deleteAll`: Removes all the software artifact binaries from a software component
	* :ref:`mySoftwareArtifact-get`: Retrieves the information of a software artifact contained in a software component
	* :ref:`mySoftwareArtifact-update`: Updates the information of a software artifact in a software component
	* :ref:`mySoftwareArtifact-delete`: Removes a software artifact binary from a software component
	* :ref:`mySoftwareArtifact-downloadFile`: Downloads the software artifact binary or archive
	* :ref:`mySoftwareArtifact-upload`: Uploads a binary file to a software artifact
	* :ref:`mySoftwareArtifact-download`: Downloads the software artifact binary or archive
	* :ref:`mySoftwareArtifact-createFromRemoteServer`: Create an artifact (and all the hierarchy if artifact is a folder) and download the file from remote repository corresponding to artifact account or directly with URL
	* :ref:`mySoftwareArtifact-addOrRemoveFileFromCache`: Add or remove a file of an artifact (and all the files of the hierarchy if artifact is a folder) from cache
	* :ref:`mySoftwareArtifact-addChild`: Creates a child to a the software artifact (it will be a sub-software artifact) of the software component
	* :ref:`mySoftware-export`: Request to export the specified software bundle as an archive
	* :ref:`mySoftwareExportStatus-get`: Retrieve the current status of exporting a software bundle
	* :ref:`mySoftwareExport-delete`: Deletes the export ticket and associated archive of an exported software bundle export metadata (archive)
	* :ref:`mySoftwareExport-download`: Downloads the archive of an exported software bundle
	* :ref:`softwareBundle-import`: Requests to import a software bundle archive
	* :ref:`softwareBundleImport-get`: Retrieve a software bundle import ticket meta-data
	* :ref:`softwareBundleImport-upload`: Upload the software bundle archive
	* :ref:`softwareBundleImportStatus-get`: Retrieve the current status of importing a software bundle archive


.. toctree::
    :hidden:

    mySoftwareLogo_download
    mySoftwareLogo_delete
    mySoftwareLogo_downloadFile
    mySoftwareLogo_upload
    mySoftware_create
    mySoftware_getAll
    mySoftware_get
    mySoftware_update
    mySoftware_delete
    mySoftwareUsage_getAll
    mySoftwareOs_getAll
    mySoftware_clone
    mySoftwareLicense_upload
    mySoftwareLicense_download
    mySoftwareLicense_delete
    mySoftwareLicense_uploadFile
    mySoftwareArtifact_add
    mySoftwareArtifact_getAll
    mySoftwareArtifact_updateAll
    mySoftwareArtifact_deleteAll
    mySoftwareArtifact_get
    mySoftwareArtifact_update
    mySoftwareArtifact_delete
    mySoftwareArtifact_downloadFile
    mySoftwareArtifact_upload
    mySoftwareArtifact_download
    mySoftwareArtifact_createFromRemoteServer
    mySoftwareArtifact_addOrRemoveFileFromCache
    mySoftwareArtifact_addChild
    mySoftware_export
    mySoftwareExportStatus_get
    mySoftwareExport_delete
    mySoftwareExport_download
    softwareBundle_import
    softwareBundleImport_get
    softwareBundleImport_upload
    softwareBundleImportStatus_get
