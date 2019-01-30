.. Copyright FUJITSU LIMITED 2019

.. _blueprintPipeline-cancel:

blueprintPipeline_cancel
------------------------

.. function:: DELETE /users/{uid}/blueprints/{bpid}/preparations/{plid}/status

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8``

Cancel a running preparation.

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

	curl "https://uforge.example.com/api/users/{uid}/blueprints/{bpid}/preparations/{plid}/status" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`blueprint-object`
	 * :ref:`blueprintPipeline-object`
	 * :ref:`status-object`
	 * :ref:`user-object`
