.. Copyright FUJITSU LIMITED 2016-2019

.. _osMilestone-getAll:

osMilestone_getAll
------------------

.. function:: GET /distributions/{id}/milestones

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieves the list of milestones registered for an operating system. 

Returns a list :ref:`milestone-object` objects. 

A set of query parameters can be used to retrieve a subset of these milestones.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/milestones" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`milestone-object`
	 * :ref:`osMilestone-create`
	 * :ref:`osMilestone-delete`
	 * :ref:`osMilestone-get`
	 * :ref:`osMilestone-update`
