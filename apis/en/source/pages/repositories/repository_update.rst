.. Copyright FUJITSU LIMITED 2016-2019

.. _repository-update:

repository_update
-----------------

.. function:: PUT /orgs/{oid}/repositories/{rid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5.1``

Update the repository in an organisation. 

Please refer to :ref:`repository-object` for a complete list of all the ``repository`` attributes.

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

A :ref:`repository-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/repositories/{rid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:repository xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Example Repository - Updated</name>
		<url>http://example.com/newrepoUrl</url>
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
