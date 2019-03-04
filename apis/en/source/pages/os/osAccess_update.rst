.. Copyright FUJITSU LIMITED 2016-2019

.. _osAccess-update:

osAccess_update
---------------

.. function:: PUT /distributions/{id}/changeActiveStatus

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 1.0``

Changes the state of the operating system. 

If the operating system is marked ``active``, then it is ready to be used by users of the platform.  This mechanism can be used to disable the entire operating system from use without changing user permissions. 

.. warning:: users are provided authorization to use an operating system via a separate access mechanism.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/changeActiveStatus" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`distribution-object`
	 * :ref:`osLicense-download`
	 * :ref:`osLogo-download`
	 * :ref:`osLogo-downloadFile`
	 * :ref:`osPkgUpdates-getAll`
	 * :ref:`osPkg-get`
	 * :ref:`osPkg-getAll`
	 * :ref:`os-create`
	 * :ref:`os-get`
	 * :ref:`os-getAll`
	 * :ref:`os-update`
