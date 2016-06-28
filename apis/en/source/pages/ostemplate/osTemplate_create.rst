.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _osTemplate-create:

osTemplate_create
-----------------

.. function:: POST /distributions/{id}/profiles

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new OS template for an operating system.  An ``OS template`` groups together packages from the operating system that can be re-used in as an ``OS profile`` when creating an managing ``appliances``. 

Please refer to :ref:`distribprofiletemplate-object` for a complete list of all the ``OS template`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_profiles_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distribProfileTemplate-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "http://www.example.com/api/distributions/{id}/profiles" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distribProfileTemplate>
		<description>This distribution contains the minimal amount of services</description>
		<name>Template Example</name>
	</ns0:distribProfileTemplate>


.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`distribprofiletemplate-object`
	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`osTemplate-getAll`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplatePkgs-get`
	 * :ref:`osTemplate-update`
	 * :ref:`osTemplate-delete`
