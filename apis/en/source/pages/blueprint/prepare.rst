.. Copyright FUJITSU LIMITED 2019

.. _prepare:

prepare
-------

.. function:: POST /users/{uid}/blueprints/{bpid}/preparations

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8``

Prepares a blueprint for deployment.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``bpid`` (required): the id of the :ref:`blueprint-object`
             * @param deployment the :ref:`blueprintDeployment-object` information to deploy the blueprint

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`blueprintDeployment-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/blueprints/{bpid}/preparations" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:blueprintDeployment xmlns:ns0="http://www.usharesoft.com/uforge">
		<xsi:type></xsi:type>
		<credAccountUri>users/guest/accounts/4</credAccountUri>
		<region>eu-west-2</region>
	</ns0:blueprintDeployment>


.. seealso::

	 * :ref:`blueprintDeployment-object`
