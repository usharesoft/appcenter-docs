.. Copyright 2016 FUJITSU LIMITED

.. _mySoftwarePkg-get:

mySoftwarePkg_get
-----------------

.. function:: GET /users/{uid}/mysoftware/{msid}/pkgs/{mspackid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Retrieves the information of a package contained in a software component. 

This only retrieves the meta-data of the project.  If you wish to download the binaries, please use :ref:`mySoftwarePkg-download`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mysoftware-object`
* ``mspackid`` (required): the id of the package

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/pkgs/{mspackid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`mySoftwarePkg-add`
	 * :ref:`mySoftwarePkg-delete`
	 * :ref:`mySoftwarePkg-deleteAll`
	 * :ref:`mySoftwarePkg-download`
	 * :ref:`mySoftwarePkg-downloadFile`
	 * :ref:`mySoftwarePkg-getAll`
	 * :ref:`mySoftwarePkg-update`
	 * :ref:`mySoftwarePkg-upload`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`mysoftware-object`
