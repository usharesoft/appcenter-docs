.. Copyright 2016 FUJITSU LIMITED

.. _mySoftwareLicense-delete:

mySoftwareLicense_delete
------------------------

.. function:: DELETE /users/{uid}/mysoftware/{msid}/licenses/{mslid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Remove a license file from a software component.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mysoftware-object`
* ``mslid`` (required): the id of the :ref:`license-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/licenses/{mslid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

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
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-delete`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-update`
	 * :ref:`mysoftware-object`
