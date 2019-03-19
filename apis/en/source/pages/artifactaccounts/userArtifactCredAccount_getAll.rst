.. Copyright FUJITSU LIMITED 2016-2019

.. _userArtifactCredAccount-getAll:

userArtifactCredAccount_getAll
------------------------------

.. function:: GET /users/{uid}/artifactaccounts

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieve all artifact accounts for a user. 

A list of :ref:`artifactcredaccount-object` objects are returned. You can use a ``search criteria`` to retrieve a subset of these artifact accounts.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/artifactaccounts" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`artifactcredaccount-object`
	 * :ref:`orgArtifactCredAccount-create`
	 * :ref:`orgArtifactCredAccount-delete`
	 * :ref:`orgArtifactCredAccount-get`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-create`
	 * :ref:`userArtifactCredAccount-delete`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-update`
