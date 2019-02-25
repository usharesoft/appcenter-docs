.. Copyright FUJITSU LIMITED 2016-2019

.. _userArtifactCredAccount-create:

userArtifactCredAccount_create
------------------------------

.. function:: POST /users/{uid}/artifactaccounts

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new artifact account for an user. 

Please refer to :ref:`artifactcredaccount-object` for a complete list of all the ``artifact account`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`artifactCredAccount-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/artifactaccounts" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

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
	 * :ref:`orgArtifactCredAccount-create`
	 * :ref:`orgArtifactCredAccount-delete`
	 * :ref:`orgArtifactCredAccount-get`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-delete`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-getAll`
	 * :ref:`userArtifactCredAccount-update`
