.. Copyright FUJITSU LIMITED 2016-2019

.. _blueprint-getAll:

blueprint_getAll
----------------

.. function:: GET /users/{uid}/blueprints

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.fp4``

Returns all the blueprints created by a particular user. 

A list of :ref:`blueprintSummary-object` objects are returned. 

Please refer to :ref:`blueprintSummary-object` for a complete list of all the attributes. 

You can use a ``search criteria`` to retrieve a subset of these blueprints.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/blueprints" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`blueprintSummary-object`
