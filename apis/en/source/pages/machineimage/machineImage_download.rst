.. Copyright FUJITSU LIMITED 2016-2019

.. _machineImage-download:

machineImage_download
---------------------

.. function:: GET /users/{uid}/appliances/{aid}/images/{itid}/downloads

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``*/*``
	* Since: ``UForge 1.0``

Downloads a generated machine image. 

This request is the same as :ref:`machineImage-downloadFile` 

.. note:: You can only download a generated machine image if the initial generation request included the ``compress`` flag.  For more information, see :ref:`machineImage-generate`. 

The machine image can be downloaded without authentication if an ``downloadId`` is added as a ``query parameter``.  To retrieve the downloadId, use :ref:`machineImage-get`. 

.. note:: The ``downloadId`` can only be used once, afterwards it expires, and a new ``downloadId`` must be retrieved.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``false``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``itid`` (required): the id of the :ref:`image-object`
* ``aid`` (required): the id of the :ref:`appliance-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}/images/{itid}/downloads" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`image-object`
	 * :ref:`imagepkgs-object`
	 * :ref:`machineImageGeneration-cancel`
	 * :ref:`machineImagePublishedStatus-getAll`
	 * :ref:`machineImagePublished-deleteAll`
	 * :ref:`machineImagePublished-download`
	 * :ref:`machineImagePublished-getAll`
	 * :ref:`machineImageStatus-get`
	 * :ref:`machineImageStatus-getAll`
	 * :ref:`machineImage-delete`
	 * :ref:`machineImage-deleteAll`
	 * :ref:`machineImage-downloadFile`
	 * :ref:`machineImage-generate`
	 * :ref:`machineImage-get`
	 * :ref:`machineImage-getAll`
	 * :ref:`machineImage-publish`
	 * :ref:`machineImage-regenerate`
