.. Copyright FUJITSU LIMITED 2016-2019

.. _scanPublishedImage-deploy:

scanPublishedImage_deploy
-------------------------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/deploys

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.7.6``

Deploy a new machine from an image published to a target environment.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``pitid`` (required): the id of the :ref:`publishimage-object`
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`deployment-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages/{pitid}/deploys" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:deployment xmlns:ns0="http://www.usharesoft.com/uforge">
		<xsi:type></xsi:type>
		<name>My Deployment</name>
		<instances>
			<instance>
				<cores>1</cores>
				<memory>1024</memory>
			</instance>
		</instances>
	</ns0:deployment>


.. seealso::

	 * :ref:`deployment-object`
	 * :ref:`image-object`
	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`publishimage-object`
	 * :ref:`scan-object`
	 * :ref:`scanImage-generate`
	 * :ref:`scannedinstance-object`
	 * :ref:`user-object`
