.. Copyright 2017 FUJITSU LIMITED

.. _mySoftwareRestrictionOS-evaluate:

mySoftwareRestrictionOS_evaluate
--------------------------------

.. function:: POST /users/{uid}/mysoftware/{msid}/restriction/{brid}/distributions

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7``

Evaluate the restriction rule to retrieve all distributions for which the software component is designed for. 

A list of :ref:`distribution-object` objects are returned. 

.. note:: carriage return is not authorized in the restriction rule.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`
* ``brid`` (required): the id of the :ref:`bundlerestriction-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`bundleRestriction-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/restriction/{brid}/distributions" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`mySoftware-object`
	 * :ref:`mySoftwareArtifact-add`
	 * :ref:`mySoftwareArtifact-addChild`
	 * :ref:`mySoftwareArtifact-addOrRemoveFileFromCache`
	 * :ref:`mySoftwareArtifact-createFromRemoteServer`
	 * :ref:`mySoftwareArtifact-delete`
	 * :ref:`mySoftwareArtifact-deleteAll`
	 * :ref:`mySoftwareArtifact-download`
	 * :ref:`mySoftwareArtifact-downloadFile`
	 * :ref:`mySoftwareArtifact-get`
	 * :ref:`mySoftwareArtifact-update`
	 * :ref:`mySoftwareArtifact-updateAll`
	 * :ref:`mySoftwareArtifact-upload`
	 * :ref:`mySoftwareExportStatus-get`
	 * :ref:`mySoftwareExport-delete`
	 * :ref:`mySoftwareExport-download`
	 * :ref:`mySoftwareLicense-delete`
	 * :ref:`mySoftwareLicense-download`
	 * :ref:`mySoftwareLicense-upload`
	 * :ref:`mySoftwareLicense-uploadFile`
	 * :ref:`mySoftwareLogo-delete`
	 * :ref:`mySoftwareLogo-download`
	 * :ref:`mySoftwareLogo-downloadFile`
	 * :ref:`mySoftwareLogo-upload`
	 * :ref:`mySoftwareRestriction-update`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftware-availableForImage`
	 * :ref:`mySoftware-clone`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-export`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`softwareBundleImport-get`
	 * :ref:`softwareartifact-object`
	 * :ref:`softwarebundleImportStatus-get`
	 * :ref:`softwarebundleImport-upload`
	 * :ref:`softwarebundle-import`
