.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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

* ``uid`` (required): the id of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mysoftware-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/users/{uid}/mysoftware/{msid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`mysoftware-object`
	 * :ref:`mySoftware-create`
	 * :ref:`mySoftware-getAll`
	 * :ref:`mySoftware-get`
	 * :ref:`mySoftware-update`
	 * :ref:`mySoftwareUsage-getAll`
	 * :ref:`mySoftwarePkg-add`
	 * :ref:`mySoftwarePkg-getAll`
	 * :ref:`mySoftwarePkg-deleteAll`
	 * :ref:`mySoftwarePkg-get`
	 * :ref:`mySoftwarePkg-update`
	 * :ref:`mySoftwarePkg-download`
	 * :ref:`mySoftwarePkg-downloadFile`
	 * :ref:`mySoftwarePkg-upload`
	 * :ref:`mySoftwarePkg-delete`
	 * :ref:`mySoftwareLicense-upload`
	 * :ref:`mySoftwareLicense-uploadFile`
	 * :ref:`mySoftwareLicense-download`
	 * :ref:`mySoftwareLicense-delete`
