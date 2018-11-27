.. Copyright 2018 FUJITSU LIMITED

.. _containerTemplateImage-publish:

containerTemplateImage_publish
------------------------------

.. function:: POST /users/{uid}/mysoftware/{msid}/templates/{tid}/images/{tiid}/pimages

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.8``

Publishes a generated machine image to a target cloud environment. 

The response body is a ``publish image ticket`` that provides the meta-data of the published machine image. The actual publication is done asynchronously.  To poll the status of this publication, use :ref:`scanPublishedImageStatus-get`.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``image_publish``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`
* ``tiid`` (required): the id of the :ref:`image-object`
* ``tid`` (required): the id of the :ref:`containertemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`publishImage-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/templates/{tid}/images/{tiid}/pimages" -X POST \
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
	 * :ref:`containerTemplate-create`
	 * :ref:`containerTemplate-delete`
	 * :ref:`containerTemplate-generate`
	 * :ref:`containerTemplate-get`
	 * :ref:`containerTemplate-getAll`
	 * :ref:`containertemplate-object`
	 * :ref:`mySoftware-object`
