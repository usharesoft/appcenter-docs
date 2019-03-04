.. Copyright FUJITSU LIMITED 2016-2019

.. _deployment-getDeployStatus:

deployment_getDeployStatus
--------------------------

.. function:: GET /users/{uid}/deployments/{did}/status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.fp6``

Returns the status of a deployment. 

A deployment is the instantiation of a :ref:`deployment-object`. 

Currently a deployment is a single instance of a software stack. To deploy a published machine image, refer to :ref:`machineImagePublished-deploy`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``did`` (required): the id of the :ref:`deployment-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/deployments/{did}/status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`deployment-object`
	 * :ref:`deployment-get`
	 * :ref:`deployment-getAll`
	 * :ref:`deployment-terminate`
	 * :ref:`machineImagePublished-deploy`
	 * :ref:`user-object`
