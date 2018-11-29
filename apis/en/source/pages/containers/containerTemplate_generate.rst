.. Copyright 2018 FUJITSU LIMITED

.. _containerTemplate-generate:

containerTemplate_generate
--------------------------

.. function:: POST /users/{uid}/mysoftware/{msid}/templates/{tid}/images

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.9``

Request to generate a machine image from a container template. 

This response body is an ``image ticket`` that provides the meta-data of the machine image that is to be generated.  The actual generation is done asynchronously.  To poll the status of this generation, use :ref:`machineImageStatus-get`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_generate``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`
* ``tid`` (required): the id of the :ref:`containertemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`image-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/templates/{tid}/images" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml



.. seealso::

	 * :ref:`containerTemplateImageGeneration-cancel`
	 * :ref:`containerTemplateImageGeneration-get`
	 * :ref:`containerTemplateImagePublish-cancel`
	 * :ref:`containerTemplateImagePublish-get`
	 * :ref:`containerTemplateImagePublished-delete`
	 * :ref:`containerTemplateImagePublished-get`
	 * :ref:`containerTemplateImage-delete`
	 * :ref:`containerTemplateImage-download`
	 * :ref:`containerTemplateImage-downloadFile`
	 * :ref:`containerTemplateImage-get`
	 * :ref:`containerTemplateImage-publish`
	 * :ref:`containerTemplateTargetFormat-getAll`
	 * :ref:`containerTemplate-create`
	 * :ref:`containerTemplate-delete`
	 * :ref:`containerTemplate-get`
	 * :ref:`containerTemplate-getAll`
	 * :ref:`containertemplate-object`
	 * :ref:`image-object`
	 * :ref:`mySoftware-object`
