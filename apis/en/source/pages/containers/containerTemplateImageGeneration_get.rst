.. Copyright 2018 FUJITSU LIMITED

.. _containerTemplateImageGeneration-get:

containerTemplateImageGeneration_get
------------------------------------

.. function:: GET /users/{uid}/mysoftware/{msid}/templates/{tid}/images/{tiid}/status

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8.8``

Retrieves the generation status of a machine image generated from a container template.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``appliance_create``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`
* ``tiid`` (required): the id of the :ref:`image-object`
* ``tid`` (required): the id of the :ref:`containertemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/templates/{tid}/images/{tiid}/status" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`containerTemplateImageGeneration-cancel`
	 * :ref:`containerTemplateImagePublish-cancel`
	 * :ref:`containerTemplateImagePublish-get`
	 * :ref:`containerTemplateImagePublished-delete`
	 * :ref:`containerTemplateImagePublished-get`
	 * :ref:`containerTemplateImage-delete`
	 * :ref:`containerTemplateImage-download`
	 * :ref:`containerTemplateImage-downloadFile`
	 * :ref:`containerTemplateImage-get`
	 * :ref:`containerTemplateImage-publish`
	 * :ref:`containerTemplate-create`
	 * :ref:`containerTemplate-generate`
	 * :ref:`containerTemplate-get`
	 * :ref:`containertemplate-object`
	 * :ref:`image-object`
	 * :ref:`mySoftware-object`
	 * :ref:`status-object`
