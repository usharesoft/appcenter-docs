.. Copyright 2016 FUJITSU LIMITED

.. _scanmachineimage-api-resources:

Scan Machine Image API Resources
================================

	* :ref:`scanImage-publish`: Request to publish (register) a generated machine image to a target cloud environment
	* :ref:`scanPublishedImage-get`: Retrieve a published machine image for a scan
	* :ref:`scanPublishedImage-delete`: Removes a published machine image from a scan
	* :ref:`scanPublishedImageStatus-get`: Retrieve the publish status of all the published machine images for an appliance
	* :ref:`scanPublishedImage-cancel`: Cancel a publish of a machine image to a cloud environment
	* :ref:`scanImage-getAll`: Returns all of the machine images generated from a scan
	* :ref:`scanImage-generate`: Request to generate a machine image from a scan
	* :ref:`scanImage-get`: Retrieves the meta-data of a machine image generated from a scan
	* :ref:`scanImageGeneration-delete`: Deletes a machine image generated from a scan
	* :ref:`scanImageGeneration-cancel`: Cancels a running generation of a machine image from a scan
	* :ref:`scanImageGenerationStatus-get`: Retrieves the generation status of a machine image being generated
	* :ref:`scanImage-download`: Downloads a generated machine image from a scan
	* :ref:`scanImage-downloadFile`: Downloads a generated machine image from a scan


.. toctree::
    :hidden:

    scanImage_publish
    scanPublishedImage_get
    scanPublishedImage_delete
    scanPublishedImageStatus_get
    scanPublishedImage_cancel
    scanImage_getAll
    scanImage_generate
    scanImage_get
    scanImageGeneration_delete
    scanImageGeneration_cancel
    scanImageGenerationStatus_get
    scanImage_download
    scanImage_downloadFile
