.. Copyright 2017 FUJITSU LIMITED

.. _osTemplatePkgs-get:

osTemplatePkgs_get
------------------

.. function:: GET /distributions/{id}/profiles/{prid}/pkgs

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieves the list of native packages for an OS template.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``prid`` (required): the id of the :ref:`distribprofiletemplate-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/profiles/{prid}/pkgs" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`distribprofiletemplate-object`
	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`osTemplate-getAll`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplate-create`
	 * :ref:`osTemplate-update`
	 * :ref:`osTemplate-delete`
