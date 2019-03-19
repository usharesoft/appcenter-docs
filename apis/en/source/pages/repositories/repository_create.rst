.. Copyright FUJITSU LIMITED 2016-2019

.. _repository-create:

repository_create
-----------------

.. function:: POST /orgs/{oid}/repositories

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5.1``

Creates a new repository in an organization. 

Please refer to :ref:`repository-object` for a complete list of all the ``repository`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`repository-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/repositories" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:repository xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Example Repository</name>
		<url>http://example.com/repoUrl</url>
		<packagingType>RPM</packagingType>
		<coreRepository>true</coreRepository>
	</ns0:repository>


.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`repository-object`
	 * :ref:`repositoryOS-getAll`
	 * :ref:`repository-create`
	 * :ref:`repository-delete`
	 * :ref:`repository-getAll`
	 * :ref:`repository-update`
