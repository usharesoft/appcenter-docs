.. Copyright 2016 FUJITSU LIMITED

.. _orgArtifactCredAccount-get:

orgArtifactCredAccount_get
--------------------------

.. function:: GET /orgs/{oid}/artifactaccounts/{caid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Retrieve information of an artifact account.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``software_upload``

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

	curl "https://uforge.example.com/api/orgs/{oid}/artifactaccounts/{caid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`artifactcredaccount-object`
	 * :ref:`orgArtifactCredAccount-create`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`orgArtifactCredAccount-delete`
	 * :ref:`userArtifactCredAccount-create`
	 * :ref:`userArtifactCredAccount-getAll`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-delete`
