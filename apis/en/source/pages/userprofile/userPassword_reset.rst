.. Copyright FUJITSU LIMITED 2016-2019

.. _userPassword-reset:

userPassword_reset
------------------

.. function:: PUT /users/forgotpassword

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: 
	* Since: ``UForge 1.0``

Resets a user's password. A new random password is sent to the user's email account. The email account in the request must be the same as the email account currently stored in the user's account.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

None
HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`user-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/forgotpassword" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:user xmlns:ns0="http://www.usharesoft.com/uforge">
		<loginName>{newuser-login-name}</loginName>
		<email>{newuser-login-name}@company.com</email>
	</ns0:user>


.. seealso::

	 * :ref:`user-api-resources`
	 * :ref:`user-object`
	 * :ref:`userAvatar-delete`
	 * :ref:`userAvatar-download`
	 * :ref:`userAvatar-downloadFile`
	 * :ref:`userAvatar-upload`
