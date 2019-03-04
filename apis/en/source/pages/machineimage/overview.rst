.. Copyright FUJITSU LIMITED 2016-2019

.. _machineimage-api-resources:

Machine Image API Resources
===========================

	* :ref:`applianceImage-publish`: Request to publish (register) a generated machine image to a target cloud environment
	* :ref:`machineImageFile-download`: Downloads a file of a generated PXE image
	* :ref:`machineImageGeneration-cancel`: Cancels a running generation of a machine image
	* :ref:`machineImagePkg-getAll`: Retrieves all the native packages contained in the machine image
	* :ref:`machineImagePublish-cancel`: Cancels a running publish of a machine image to a target environment
	* :ref:`machineImagePublishedStatus-get`: Retrieve the publish status of a published machine image for an appliance
	* :ref:`machineImagePublishedStatus-getAll`: Retrieve the publish status of all the published machine images for an appliance
	* :ref:`machineImagePublished-delete`: Removes a published machine image from an appliance
	* :ref:`machineImagePublished-deleteAll`: Removes all published machine images for an appliance
	* :ref:`machineImagePublished-deploy`: Deploy a new machine from an image published to a target environment
	* :ref:`machineImagePublished-download`: Downloads a published machine image
	* :ref:`machineImagePublished-get`: Retrieve a published machine image for an appliance
	* :ref:`machineImagePublished-getAll`: Retrieve all the published machine images for an appliance
	* :ref:`machineImageStatus-get`: Retrieves the generation status of a machine image
	* :ref:`machineImageStatus-getAll`: Retrieves the generation status of all the machine images for an appliance
	* :ref:`machineImage-delete`: Deletes a machine image generated from an appliance
	* :ref:`machineImage-deleteAll`: Deletes all the machine images from an appliance
	* :ref:`machineImage-download`: Downloads a generated machine image
	* :ref:`machineImage-downloadFile`: Downloads a generated machine image
	* :ref:`machineImage-generate`: Request to generate a machine image from an appliance
	* :ref:`machineImage-get`: Retrieves the meta-data of a machine image
	* :ref:`machineImage-getAll`: Returns all of the machine images of an appliance
	* :ref:`machineImage-getPlatformTools`: Retrieves the platform tools that match the appliance and image format
	* :ref:`machineImage-publish`: Request to publish (register) a generated machine image to a target cloud environment
	* :ref:`machineImage-regenerate`: Request to re-generate a machine image from a previous generation request
	* :ref:`platformTool-getSoftware`: Retrieves a list of software components (libs, drivers etc) that will be automatically injected when generating a machine image for this target environment
	* :ref:`pxeBootScript-download`: Returns a pxe script listing all the images accessible to a given user
	* :ref:`scanImage-getPlatformTools`: Retrieves a list of software components (libs, drivers etc) for the scanned system that will be automatically injected when generating a machine image for this target environment
	* :ref:`scanPublishedImage-deploy`: Deploy a new machine from an image published to a target environment


.. toctree::
    :hidden:

    applianceImage_publish
    machineImageFile_download
    machineImageGeneration_cancel
    machineImagePkg_getAll
    machineImagePublish_cancel
    machineImagePublishedStatus_get
    machineImagePublishedStatus_getAll
    machineImagePublished_delete
    machineImagePublished_deleteAll
    machineImagePublished_deploy
    machineImagePublished_download
    machineImagePublished_get
    machineImagePublished_getAll
    machineImageStatus_get
    machineImageStatus_getAll
    machineImage_delete
    machineImage_deleteAll
    machineImage_download
    machineImage_downloadFile
    machineImage_generate
    machineImage_get
    machineImage_getAll
    machineImage_getPlatformTools
    machineImage_publish
    machineImage_regenerate
    platformTool_getSoftware
    pxeBootScript_download
    scanImage_getPlatformTools
    scanPublishedImage_deploy
