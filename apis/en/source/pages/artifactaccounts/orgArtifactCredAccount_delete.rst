.. Copyright 2016 FUJITSU LIMITED

.. _orgArtifactCredAccount-delete:

orgArtifactCredAccount_delete
-----------------------------

.. function:: DELETE /orgs/{oid}/artifactaccounts/{caid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.6``

Remove an artifact account from an organization.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_delete``

URI Parameters
~~~~~~~~~~~~~~

* ``caid`` (required): the id of the :ref:`artifactcredaccount-object`
* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/artifactaccounts/{caid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`artifactcredaccount-object`
	 * :ref:`orgArtifactCredAccount-create`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-get`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-create`
	 * :ref:`userArtifactCredAccount-getAll`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-delete`
