.. Copyright FUJITSU LIMITED 2016-2019

.. _uforgeStatus-get:

uforgeStatus_get
----------------

.. function:: GET /status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``text/plain`` ``application/json``
	* Since: ``UForge 3.4``

Retrieves the status of the platform.  This is a helper resource to determine if the platform web services are up and running.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`servicestatus-object`
