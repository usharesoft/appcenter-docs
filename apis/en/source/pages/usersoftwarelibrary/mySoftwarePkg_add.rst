.. Copyright 2016 FUJITSU LIMITED

.. _mySoftwarePkg-add:

mySoftwarePkg_add
-----------------

.. function:: POST /users/{uid}/mysoftware/{msid}/pkgs

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Adds a new package to a software component.  This only creates the meta-data for the package, please use :ref:`mySoftwarePkg-upload` to upload the file(s). 

Please refer to :ref:`package-object` for a complete list of all the ``pkg`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): 
* ``msid`` (required): 

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`package-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/pkgs" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:package>
		<size>10</size>
		<origName>example.txt</origName>
	</ns0:package>


.. seealso::

	 * :ref:`mysoftware-object`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-update`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftwarePkg-getAll`
	 * :ref:`mySoftwarePkg-deleteAll`
	 * :ref:`mySoftwarePkg-get`
	 * :ref:`mySoftwarePkg-update`
	 * :ref:`mySoftwarePkg-download`
	 * :ref:`mySoftwarePkg-downloadFile`
	 * :ref:`mySoftwarePkg-upload`
	 * :ref:`mySoftwarePkg-delete`
