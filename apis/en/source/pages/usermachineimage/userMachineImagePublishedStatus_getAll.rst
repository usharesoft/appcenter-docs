.. Copyright FUJITSU LIMITED 2016-2019

.. _userMachineImagePublishedStatus-getAll:

userMachineImagePublishedStatus_getAll
--------------------------------------

.. function:: GET /users/{uid}/pimages/status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2.1``

Retrieves the current status of published machine images owned by a user. 

A list of :ref:`status-object` objects are returned. 

The ``img`` query parameter can be used to retrieve a subset of published machine images status.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/pimages/status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`image-object`
	 * :ref:`machineimage-api-resources`
	 * :ref:`publishimage-object`
	 * :ref:`userMachineImagePublished-getAll`
	 * :ref:`userMachineImageStatus-get`
	 * :ref:`userMachineImage-getAll`
