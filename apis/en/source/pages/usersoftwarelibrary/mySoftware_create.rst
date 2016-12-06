.. Copyright 2016 FUJITSU LIMITED

.. _mySoftware-create:

mySoftware_create
-----------------

.. function:: POST /users/{uid}/mysoftware

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Creates a new software component in a user's ``Software library``. 

Once created, the user can upload software files (open source or proprietary).  This software component can be added to one or more appliance templates. 

Please refer to :ref:`mysoftware-object` for a complete list of all the ``my software`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`mySoftware-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:mySoftware xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Example</name>
		<version>1.0</version>
	</ns0:mySoftware>


.. seealso::

	 * :ref:`mySoftwareLicense-delete`
	 * :ref:`mySoftwareLicense-download`
	 * :ref:`mySoftwareLicense-upload`
	 * :ref:`mySoftwareLicense-uploadFile`
	 * :ref:`mySoftwarePkg-add`
	 * :ref:`mySoftwarePkg-delete`
	 * :ref:`mySoftwarePkg-deleteAll`
	 * :ref:`mySoftwarePkg-download`
	 * :ref:`mySoftwarePkg-downloadFile`
	 * :ref:`mySoftwarePkg-get`
	 * :ref:`mySoftwarePkg-getAll`
	 * :ref:`mySoftwarePkg-update`
	 * :ref:`mySoftwarePkg-upload`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`mysoftware-object`
