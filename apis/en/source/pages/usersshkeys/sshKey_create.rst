.. Copyright FUJITSU LIMITED 2016-2019

.. _sshKey-create:

sshKey_create
-------------

.. function:: POST /users/{uid}/sshkeys

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Creates a new public ssh key. 

Please refer to :ref:`sshkey-object` for a complete list of all the ``public ssh key`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`sshKey-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/sshkeys" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:sshKey xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>SSHKey Example</name>
		<publicKey>ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEA8IMiRk5buQk0UuH0+XxCeVHz7hO9ViXHtFMrVVJsNq+ECk1J8f+ehKFPa/ir4P8tIp+1CkkYOB/uyjDj1LLEQsqJgXC0TDp2i3kPyG7A6OnQ82EpPf7h5SNdPjFKnMRzBNNh7e0l65Zyi17opmVxgd95Nvb1FJtE6ebIdEgfT6E79mcJ0WBYzzQPCKjhHkkbU/bocR6dfkD3s9tf19JqZ0QkgV8f/QBb9Rp0aJ3Cp2X3bql1Hokoqqjhqsw/ZgfR1b1XrqlGrUgLqSSZxJUYAf5pRf/TsEs50TUJoWvjVxy0AWFIpmAJWj5T2yZeZAqDTeAuFIN4zlitwCAHNPVo85oEDS8PhPe4dcDPSAotyznizKb8/Ble2F5dqf3gibA9XiqPrtIySfewSt7vTjxNgy/iGwL842H1iHKKW0+2UBihWZene922ZXDMiB0r6WzbgidGD1eYEHT6dW+gNdpyD9HD1RmxU9YddE7e8eDKIOE+NLT3jYbRP4XY0vabcdefXQLZJ6qW0Agp4DDj6pkxd9dv6DJx9ZMCIKJlYhos9RNEujoRX2rk4uADwMSeAprJux0CtCJRghk5ztJLe1nIWYeMlbb3pCzW4bXemw/KjrosMaHQ0jKhOgPeHhlGb2xMo2b3KcFXpoYvd3BeSDDwdJ7uOT+TDAEt0Ui3F+M8= test@example.com</publicKey>
	</ns0:sshKey>


.. seealso::

	 * :ref:`sshKey-delete`
	 * :ref:`sshKey-get`
	 * :ref:`sshKey-getAll`
	 * :ref:`sshkey-object`
