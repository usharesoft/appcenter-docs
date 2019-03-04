.. Copyright FUJITSU LIMITED 2016-2019

.. _userArtifactCredAccount-update:

userArtifactCredAccount_update
------------------------------

.. function:: PUT /users/{uid}/artifactaccounts/{caid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Update the meta-data of an artifact account. 

Please refer to :ref:`artifactcredaccount-object` for a complete list of all the ``artifact account`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``cloud_account_edit``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the id of the :ref:`user-object`
* ``caid`` (required): the id of the :ref:`artifactcredaccount-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`artifactCredAccount-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/artifactaccounts/{caid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:artifactCredAccount xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>my-artifact-account-update</name>
		<host>myremoterepo-update.com</host>
		<type>ftp</type>
		<port>21</port>
		<login>admin-update</login>
		<password>adminpwd-update</password>
	</ns0:artifactCredAccount>


.. seealso::

	 * :ref:`artifactcredaccount-object`
	 * :ref:`orgArtifactCredAccount-create`
	 * :ref:`orgArtifactCredAccount-delete`
	 * :ref:`orgArtifactCredAccount-get`
	 * :ref:`orgArtifactCredAccount-getAll`
	 * :ref:`orgArtifactCredAccount-update`
	 * :ref:`userArtifactCredAccount-create`
	 * :ref:`userArtifactCredAccount-delete`
	 * :ref:`userArtifactCredAccount-get`
	 * :ref:`userArtifactCredAccount-getAll`
