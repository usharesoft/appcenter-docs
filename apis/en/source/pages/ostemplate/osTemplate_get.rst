.. Copyright FUJITSU LIMITED 2016-2019

.. _osTemplate-get:

osTemplate_get
--------------

.. function:: GET /distributions/{id}/profiles/{prid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves the meta-data of an OS template.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``prid`` (required): the id of the :ref:`distribprofile-object`
* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/profiles/{prid}" -X GET \
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
	 * :ref:`osTemplate-getAll`
	 * :ref:`osTemplate-update`
	 * :ref:`windowsprofile-object`
