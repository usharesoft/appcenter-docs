.. Copyright FUJITSU LIMITED 2016-2019

.. _repositoryUpdate-create:

repositoryUpdate_create
-----------------------

.. function:: POST /orgs/{oid}/repositories/{rid}/updates

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp3``

Triggers a new package update process for a specific repository, within an organization. 

This response body is a new ``update ticket`` providing the meta-data of the repository update that is to be triggered. The actual update is done asynchronously. To poll the status of this update, use :ref:`repositoryUpdateStatus-get`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`
* ``rid`` (required): the id of the :ref:`repository-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/repositories/{rid}/updates" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`org-object`
	 * :ref:`repository-object`
	 * :ref:`repositoryUpdate-object`
	 * :ref:`repositoryUpdateStatus-get`
	 * :ref:`repositoryUpdate-getAll`
	 * :ref:`repository-create`
	 * :ref:`repository-delete`
	 * :ref:`repository-getAll`
	 * :ref:`repository-update`
	 * :ref:`status-object`
