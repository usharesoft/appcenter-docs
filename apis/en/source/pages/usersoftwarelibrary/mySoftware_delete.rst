.. Copyright FUJITSU LIMITED 2016-2019

.. _mySoftware-delete:

mySoftware_delete
-----------------

.. function:: DELETE /users/{uid}/mysoftware/{msid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 1.0``

Removes a software component from a user's ``Software Library``. 

.. warning:: If any of the user's appliance templates is using this software component, the software component will also be removed from the appliance template in question.  In order to ensure no appliance templates are using this software component, use :ref:`mySoftwareUsage-getAll`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

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
	 * :ref:`mySoftwareArtifact-getAll`
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
	 * :ref:`mySoftwareRestrictionOS-evaluate`
	 * :ref:`mySoftwareRestrictionOS-getAll`
	 * :ref:`mySoftwareRestriction-update`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftware-availableForImage`
	 * :ref:`mySoftware-clone`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-export`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`softwareBundleImport-get`
	 * :ref:`softwarebundleImportStatus-get`
	 * :ref:`softwarebundleImport-upload`
	 * :ref:`softwarebundle-import`
