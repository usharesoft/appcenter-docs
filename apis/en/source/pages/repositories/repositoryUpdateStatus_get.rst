.. Copyright FUJITSU LIMITED 2016-2019

.. _repositoryUpdateStatus-get:

repositoryUpdateStatus_get
--------------------------

.. function:: GET /orgs/{oid}/repositories/{rid}/updates/{uid}/status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp3``

Retrieves the status of a repository update.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`repositoryUpdate-object`
* ``oid`` (required): the id of the :ref:`org-object`
* ``rid`` (required): the id of the :ref:`repository-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/repositories/{rid}/updates/{uid}/status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`org-object`
	 * :ref:`repository-object`
	 * :ref:`repositoryUpdate-object`
	 * :ref:`repositoryUpdate-create`
	 * :ref:`repositoryUpdate-getAll`
	 * :ref:`repository-create`
	 * :ref:`repository-delete`
	 * :ref:`repository-getAll`
	 * :ref:`repository-update`
	 * :ref:`status-object`
