.. Copyright FUJITSU LIMITED 2016-2019

.. _userOS-update:

userOS_update
-------------

.. function:: PUT /users/{uid}/distros

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.2``

Updates the list of operating systems the user has access to. 

Please refer to :ref:`distribprofile-object` for a complete list of all the ``operating system`` attributes. 

.. warning:: Any operating system that the user currently has access to that is not specified in the new operating system list will be removed, this effectively de-activates those operating systems for the user.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distributions-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/distros" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distributions xmlns:ns0="http://www.usharesoft.com/uforge">
		<distributions>
			<distribution>
				<active>true</active>
				<uri>distributions/43</uri>
				<visible>true</visible>
			</distribution>
		</distributions>
	</ns0:distributions>


.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`userOS-getAll`
	 * :ref:`userOS-update`
