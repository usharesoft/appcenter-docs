.. Copyright FUJITSU LIMITED 2016-2019

.. _deployment-terminate:

deployment_terminate
--------------------

.. function:: DELETE /users/{uid}/deployments/{did}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.7.fp6``

Stops a machine in the cloud environnement and removes it from the list of deployments.

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

	curl "https://uforge.example.com/api/users/{uid}/deployments/{did}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`deployment-object`
	 * :ref:`deployment-get`
	 * :ref:`deployment-getAll`
	 * :ref:`deployment-getDeployStatus`
	 * :ref:`machineImagePublished-deploy`
	 * :ref:`user-object`
