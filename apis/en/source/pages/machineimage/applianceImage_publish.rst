.. Copyright 2017 FUJITSU LIMITED

.. _applianceImage-publish:

applianceImage_publish
----------------------

.. function:: POST /users/{uid}/appliances/{aid}/images/{itid}/pimages

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 2.0``

Request to publish (register) a generated machine image to a target cloud environment. 

The response body is a ``publish image ticket`` that provides the meta-data of the published machine image. The actual publication is done asynchronously.  To poll the status of this publication, use :ref:`machineImagePublishedStatus-getAll`. 

This request is similar to :ref:`machineImage-publish`

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_publish``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`publishImage-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/{itid}/pimages" -X POST \
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

	 * :ref:`appliance-object`
	 * :ref:`applianceImage-publish`
	 * :ref:`machineImageGeneration-cancel`
	 * :ref:`machineImagePublish-cancel`
	 * :ref:`machineImagePublishedStatus-get`
	 * :ref:`machineImagePublishedStatus-getAll`
	 * :ref:`machineImagePublished-delete`
	 * :ref:`machineImagePublished-deleteAll`
	 * :ref:`machineImagePublished-deploy`
	 * :ref:`machineImagePublished-download`
	 * :ref:`machineImagePublished-get`
	 * :ref:`machineImagePublished-getAll`
	 * :ref:`machineImageStatus-get`
	 * :ref:`machineImageStatus-getAll`
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-download`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
	 * :ref:`publishimage-object`
