.. Copyright FUJITSU LIMITED 2016-2019

.. _userMachineImagePublished-getAll:

userMachineImagePublished_getAll
--------------------------------

.. function:: GET /users/{uid}/pimages

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2.1``

Retrieves all the machine images that have been published by an user. 

A published machine image is a machine image that has been uploaded and registered to a virtual or cloud environment. 

A list of :ref:`publishimage-object` objects are returned. 

The ``img`` query parameter can be used to retrieve a subset of published machine images.

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

	curl "https://uforge.example.com/api/users/{uid}/pimages" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`image-object`
	 * :ref:`machineimage-api-resources`
	 * :ref:`publishimage-object`
	 * :ref:`userMachineImagePublishedStatus-getAll`
	 * :ref:`userMachineImageStatus-get`
	 * :ref:`userMachineImage-getAll`
