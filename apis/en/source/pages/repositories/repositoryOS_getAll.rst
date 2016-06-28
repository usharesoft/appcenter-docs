.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _repositoryOS-getAll:

repositoryOS_getAll
-------------------

.. function:: GET /orgs/{oid}/repositories/{rid}/distributions

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5.1``

Retrieve all distributions registered to a repository. 

A list of :ref:`repository-object` objects are returned.

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

	curl "/orgs/{oid}/repositories/{rid}/distributions" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`repository-object`
	 * :ref:`distribprofile-object`
	 * :ref:`repository-getAll`
	 * :ref:`repository-create`
	 * :ref:`repository-delete`
	 * :ref:`repository-update`
	 * :ref:`repositoryOS-getAll`
