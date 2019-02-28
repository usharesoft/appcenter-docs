.. Copyright FUJITSU LIMITED 2019

.. _pipeline-getAll:

pipeline_getAll
---------------

.. function:: GET /users/{uid}/blueprints/{bpid}/preparations

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8``

Returns all the preparations created for a blueprint. 

A list of :ref:`pipeline-object` objects are returned. 

Please refer to :ref:`pipeline-object` for a complete list of all the attributes.

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

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/blueprints/{bpid}/preparations" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`blueprintDeployment-object`
