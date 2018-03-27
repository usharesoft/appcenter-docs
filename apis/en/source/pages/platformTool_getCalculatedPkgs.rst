.. Copyright 2018 FUJITSU LIMITED

.. _platformTool-getCalculatedPkgs:

platformTool_getCalculatedPkgs
------------------------------

.. function:: GET /orgs/{oid}/platformtools/{ptid}/pkgs

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ````

Retrieves os packages in the platform tool.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``oid`` (required): id of the organization.
* ``ptid`` (required): id of the platform tool.

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/orgs/{oid}/platformtools/{ptid}/pkgs" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

