.. Copyright FUJITSU LIMITED 2016-2019

.. _osMilestone-get:

osMilestone_get
---------------

.. function:: GET /distributions/{id}/milestones/{mid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Retrieves the meta-data of a milestone.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``mid`` (required): the id of the :ref:`milestone-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/milestones/{mid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`milestone-object`
	 * :ref:`osMilestone-create`
	 * :ref:`osMilestone-delete`
	 * :ref:`osMilestone-get`
	 * :ref:`osMilestone-getAll`
	 * :ref:`osMilestone-update`
