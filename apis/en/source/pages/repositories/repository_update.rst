.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

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

	curl "/orgs/{oid}/repositories/{rid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:repository>
		<name>Example Repository - Updated</name>
		<url>http://example.com/newrepoUrl</url>
		<packagingType>RPM</packagingType>
		<officiallySupported>true</officiallySupported>
	</ns0:repository>


.. seealso::

	 * :ref:`repository-object`
	 * :ref:`distribprofile-object`
	 * :ref:`repository-getAll`
	 * :ref:`repository-create`
	 * :ref:`repository-delete`
	 * :ref:`repository-update`
	 * :ref:`repositoryOS-getAll`
