.. Copyright FUJITSU LIMITED 2016-2019

.. _scanImage-publish:

scanImage_publish
-----------------

.. function:: POST /users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Request to publish (register) a generated machine image to a target cloud environment. 

The response body is a ``publish image ticket`` that provides the meta-data of the published machine image. The actual publication is done asynchronously.  To poll the status of this publication, use :ref:`scanPublishedImageStatus-get`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``migration_publish``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``siid`` (required): the id of the :ref:`scannedinstance-object`
* ``itid`` (required): the id of the :ref:`image-object` to publish
* ``sid`` (required): the id of the :ref:`scan-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`publishImage-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/scannedinstances/{siid}/scans/{sid}/images/{itid}/pimages" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:publishImage xmlns:ns0="http://www.usharesoft.com/uforge">
		<xsi:type></xsi:type>
		<applianceUri>users/root/appliances/4</applianceUri>
		<credAccount>
			<xsi:type></xsi:type>
			<targetPlatform>
				<name>openstack</name>
			</targetPlatform>
			<glanceUrl>http://ip:9292</glanceUrl>
			<keystoneUrl>http://ip:5000</keystoneUrl>
			<login>username</login>
			<password>password</password>
			<keystoneVersion>v3</keystoneVersion>
		</credAccount>
		<imageUri>users/root/appliances/4/images/7</imageUri>
		<keystoneDomain>Keystone Domain Example</keystoneDomain>
		<keystoneProject>Keystone Project Example</keystoneProject>
		<displayName>Machine Image Name Example</displayName>
		<publicImage>true</publicImage>
	</ns0:publishImage>


.. seealso::

	 * :ref:`machinescan-api-resources`
	 * :ref:`machinescaninstance-api-resources`
	 * :ref:`scan-object`
	 * :ref:`scanImageGenerationStatus-get`
	 * :ref:`scanImageGeneration-cancel`
	 * :ref:`scanImageGeneration-delete`
	 * :ref:`scanImage-generate`
	 * :ref:`scanImage-get`
	 * :ref:`scanImage-getAll`
	 * :ref:`scanPublishedImageStatus-get`
	 * :ref:`scanPublishedImage-cancel`
	 * :ref:`scanPublishedImage-delete`
	 * :ref:`scanPublishedImage-get`
	 * :ref:`scannedinstance-object`
