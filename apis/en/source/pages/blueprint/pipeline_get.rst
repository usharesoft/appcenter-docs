.. Copyright FUJITSU LIMITED 2016-2019

.. _pipeline-get:

pipeline_get
------------

.. function:: GET /users/{uid}/blueprints/{bpid}/preparations/{plid}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8``

Retrieves a preparation from a blueprint

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``plid`` (required): the id of the :ref:`pipeline-object`
* ``bpid`` (required): the id of the :ref:`blueprint-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/blueprints/{bpid}/preparations/{plid}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`blueprintDeployment-object`
