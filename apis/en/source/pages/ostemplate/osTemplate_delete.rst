.. Copyright FUJITSU LIMITED 2016-2019

.. _osTemplate-delete:

osTemplate_delete
-----------------

.. function:: DELETE /distributions/{id}/profiles/{prid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Removes an OS template from an operating system.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_profiles_administrate``

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

	curl "https://uforge.example.com/api/distributions/{id}/profiles/{prid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`distribution-object`
	 * :ref:`linuxprofile-object`
	 * :ref:`osTemplatePkgs-get`
	 * :ref:`osTemplate-create`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplate-getAll`
	 * :ref:`osTemplate-update`
	 * :ref:`windowsprofile-object`
