.. Copyright FUJITSU LIMITED 2016-2019

.. _scanPublishedImage-getAccountResources:

scanPublishedImage_getAccountResources
--------------------------------------

.. function:: GET /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/accounts/{caid}/resources

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.7``

Returns any dynamic resource information from the target cloud environment.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``caid`` (required): the id of the :ref:`credaccount-object`
* ``pitid`` (required): the id of the :ref:`publishimage-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/accounts/{caid}/resources" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`credaccount-object`
	 * :ref:`deployment-object`
	 * :ref:`image-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`publishimage-object`
	 * :ref:`scan-object`
	 * :ref:`scanImage-generate`
	 * :ref:`scannedinstance-object`
	 * :ref:`user-object`
