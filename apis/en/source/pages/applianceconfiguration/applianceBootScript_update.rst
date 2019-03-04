.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceBootScript-update:

applianceBootScript_update
--------------------------

.. function:: PUT /users/{uid}/appliances/{aid}/bootscripts/{bsid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1.06``

Updates a boot script that is attached to an appliance. 

This only updates the meta-data associated with any uploaded boot script file. 

Refer to :ref:`bootscript-object` for more information on the boot script attributes. 

.. warning:: If the new boot script data contains a ``md5sum`` and if this ``md5sum`` is not equal to the existing boot script meta-data, then any uploaded boot script file is deleted and a new boot script file will need to be uploaded using :ref:`applianceBootScript-upload`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``bsid`` (required): the id of the :ref:`bootscript-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`bootScript-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/bootscripts/{bsid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:bootScript xmlns:ns0="http://www.usharesoft.com/uforge">
		<bootType>everyboot</bootType>
	</ns0:bootScript>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceBootScript-create`
	 * :ref:`applianceBootScript-delete`
	 * :ref:`applianceBootScript-deleteAll`
	 * :ref:`applianceBootScript-download`
	 * :ref:`applianceBootScript-downloadFile`
	 * :ref:`applianceBootScript-get`
	 * :ref:`applianceBootScript-getAll`
	 * :ref:`applianceBootScript-upload`
	 * :ref:`bootscript-object`
