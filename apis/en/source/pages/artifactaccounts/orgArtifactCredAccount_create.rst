.. Copyright 2016 FUJITSU LIMITED

.. _orgArtifactCredAccount-create:

orgArtifactCredAccount_create
-----------------------------

.. function:: POST /orgs/{oid}/artifactaccounts

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new artifact account that can be used by all the users in the organization. 

Please refer to :ref:`artifactcredaccount-object` for a complete list of all the ``artifact account`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_create``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): the id of the :ref:`org-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`artifactCredAccount-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/artifactaccounts" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:artifactCredAccount xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>my-artifact-account</name>
		<host>myremoterepo.com</host>
		<type>ftp</type>
		<port>21</port>
		<login>admin</login>
		<password>adminpwd</password>
	</ns0:artifactCredAccount>


.. seealso::

	 * :ref:`artifactcredaccount-object`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-get`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`orgArtifactCredAccount-delete`
	 * :ref:`userArtifactCredAccount-create`
	 * :ref:`userArtifactCredAccount-getAll`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-delete`
