.. Copyright 2017 FUJITSU LIMITED

.. _userStats-get:

userStats_get
-------------

.. function:: GET /users/{uid}/stats

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieve statistics for an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/stats" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`quota-object`
	 * :ref:`statticket-object`
	 * :ref:`userQuotas-get`
	 * :ref:`userQuotas-update`
	 * :ref:`userStats-get`
	 * :ref:`userUsage-get`
