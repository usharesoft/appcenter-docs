.. Copyright FUJITSU LIMITED 2016-2019

.. _userArtifactCredAccount-delete:

userArtifactCredAccount_delete
------------------------------

.. function:: DELETE /users/{uid}/artifactaccounts/{caid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Remove an artifact account from an user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_delete``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`artifactcredaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/artifactaccounts/{caid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`artifactcredaccount-object`
	 * :ref:`orgArtifactCredAccount-create`
	 * :ref:`orgArtifactCredAccount-delete`
	 * :ref:`orgArtifactCredAccount-get`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-create`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-getAll`
	 * :ref:`userArtifactCredAccount-update`
