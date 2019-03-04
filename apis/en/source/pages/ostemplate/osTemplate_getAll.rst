.. Copyright FUJITSU LIMITED 2016-2019

.. _osTemplate-getAll:

osTemplate_getAll
-----------------

.. function:: GET /distributions/{id}/profiles

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves all the templates available for an operating system.  An ``OS template`` groups together packages from the operating system that can be re-used in as an ``OS profile`` when creating an managing ``appliances``. 

A list of :ref:`distribution-object` objects are returned. 

A search criteria can be used to retrieve a subset of these templates.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/profiles" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`distribution-object`
	 * :ref:`linuxprofile-object`
	 * :ref:`osTemplatePkgs-get`
	 * :ref:`osTemplate-create`
	 * :ref:`osTemplate-delete`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplate-update`
	 * :ref:`windowsprofile-object`
