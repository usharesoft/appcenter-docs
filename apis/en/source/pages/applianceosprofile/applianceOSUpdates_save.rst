.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _applianceOSUpdates-save:

applianceOSUpdates_save
-----------------------

.. function:: PUT /users/{uid}/appliances/{aid}/osprofile/{osid}/updates

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Updates the OS profile package list with any available updates.  The available updates are calculated based on a date timestamp provided as part of the request as a ``query parameter``. 

To simulate the available updates available at a certain date or range of dates, see :ref:`applianceOSUpdates-get`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object` that has created the appliance
* ``osid`` (required): the id of the :ref:`distribprofile-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/users/{uid}/appliances/{aid}/osprofile/{osid}/updates" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfilePkg-getAll`
	 * :ref:`applianceOSProfilePkg-updateAll`
	 * :ref:`applianceOSUpdates-get`
	 * :ref:`applianceOSProfilePkg-getAll`
