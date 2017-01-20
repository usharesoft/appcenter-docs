.. Copyright 2017 FUJITSU LIMITED

.. _mySoftwarePkg-update:

mySoftwarePkg_update
--------------------

.. function:: PUT /users/{uid}/mysoftware/{msid}/pkgs/{mspackid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Updates the information of a package in a software component. 

This only updates the meta-data for the package, please use :ref:`mySoftwarePkg-upload` to upload the file(s). 

Please refer to :ref:`package-object` for a complete list of all the ``pkg`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mysoftware-object`
* ``mspackid`` (required): the id of the package

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`package-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/pkgs/{mspackid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:package xmlns:ns0="http://www.usharesoft.com/uforge">
		<fullName>UpdatedFilePath.txt</fullName>
	</ns0:package>


.. seealso::

	 * :ref:`mySoftwarePkg-add`
	 * :ref:`mySoftwarePkg-delete`
	 * :ref:`mySoftwarePkg-deleteAll`
	 * :ref:`mySoftwarePkg-download`
	 * :ref:`mySoftwarePkg-downloadFile`
	 * :ref:`mySoftwarePkg-get`
	 * :ref:`mySoftwarePkg-getAll`
	 * :ref:`mySoftwarePkg-upload`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`mysoftware-object`
