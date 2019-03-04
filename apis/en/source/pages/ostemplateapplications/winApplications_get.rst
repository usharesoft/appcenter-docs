.. Copyright FUJITSU LIMITED 2016-2019

.. _winApplications-get:

winApplications_get
-------------------

.. function:: GET /distributions/{id}/profiles/{prid}/applications/{appid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp3``

Retrieves a windows application.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``appid`` (required): the id of the :ref:`abstractwinapplication-object`
* ``prid`` (required): the id of the :ref:`windowsprofile-object`
* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/profiles/{prid}/applications/{appid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`applianceOSProfileApplications-getAll`
	 * :ref:`applianceOSProfileServices-getAll`
	 * :ref:`distribprofile-object`
	 * :ref:`distribution-object`
	 * :ref:`osTemplatePkgs-get`
	 * :ref:`osTemplate-create`
	 * :ref:`osTemplate-delete`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplate-getAll`
	 * :ref:`osTemplate-update`
	 * :ref:`winApplications-getAll`
	 * :ref:`winServices-get`
	 * :ref:`winServices-getAll`
	 * :ref:`windowsprofile-object`
