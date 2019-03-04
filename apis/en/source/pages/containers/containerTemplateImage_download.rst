.. Copyright FUJITSU LIMITED 2016-2019

.. _containerTemplateImage-download:

containerTemplateImage_download
-------------------------------

.. function:: GET /users/{uid}/mysoftware/{msid}/templates/{tid}/images/{itid}/downloads

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 3.8.9``

Downloads a generated machine image. 

This request is the same as :ref:`containerTemplateImage-downloadFile` 

.. note:: You can only download a generated machine image if the initial generation request included the ``compress`` flag.  For more information, see :ref:`containerTemplate-generate`. 

The machine image can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`containerTemplateImage-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``msid`` (required): the id of the :ref:`mySoftware-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``tid`` (required): the id of the :ref:`containertemplate-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/mysoftware/{msid}/templates/{tid}/images/{itid}/downloads" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`containerTemplateImageGeneration-cancel`
	 * :ref:`containerTemplateImageGeneration-get`
	 * :ref:`containerTemplateImagePublish-cancel`
	 * :ref:`containerTemplateImagePublish-get`
	 * :ref:`containerTemplateImagePublished-delete`
	 * :ref:`containerTemplateImagePublished-get`
	 * :ref:`containerTemplateImage-delete`
	 * :ref:`containerTemplateImage-downloadFile`
	 * :ref:`containerTemplateImage-get`
	 * :ref:`containerTemplateImage-publish`
	 * :ref:`containerTemplate-create`
	 * :ref:`containerTemplate-generate`
	 * :ref:`containerTemplate-get`
	 * :ref:`containerTemplate-getAll`
	 * :ref:`containertemplate-object`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
