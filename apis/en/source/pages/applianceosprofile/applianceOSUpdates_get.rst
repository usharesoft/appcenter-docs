.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _applianceOSUpdates-get:

applianceOSUpdates_get
----------------------

.. function:: GET /users/{uid}/appliances/{aid}/osprofile/{osid}/updates

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.1``

Retrieves a list of possible package updates for all the packages contained in an OS profile.  The available updates are calculated based on one or more timestamps provided as part of the request.  This includes:     - ``from``: the start date on where to calculate available updates     - ``to``: the end date on where to calculate available updates     - ``at``: a specific date on where to calculate available updates

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

	curl "http://www.example.com/api/users/{uid}/appliances/{aid}/osprofile/{osid}/updates" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`applianceOSProfile-create`
	 * :ref:`applianceOSProfile-get`
	 * :ref:`applianceOSProfile-delete`
	 * :ref:`applianceOSProfilePkg-getAll`
	 * :ref:`applianceOSProfilePkg-updateAll`
	 * :ref:`applianceOSUpdates-save`
	 * :ref:`applianceOSProfilePkg-getAll`
