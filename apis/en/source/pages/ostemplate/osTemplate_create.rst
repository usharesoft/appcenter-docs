.. Copyright FUJITSU LIMITED 2016-2019

.. _osTemplate-create:

osTemplate_create
-----------------

.. function:: POST /distributions/{id}/profiles

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Creates a new OS template for an operating system.  An ``OS template`` groups together packages from the operating system that can be re-used in as an ``OS profile`` when creating and managing ``appliances``. 

Please refer to :ref:`distribprofile-object` for a complete list of all the ``OS template`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_profiles_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribution-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distribProfile-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/profiles" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distribProfile xmlns:ns0="http://www.usharesoft.com/uforge">
		<description>This distribution contains the minimal amount of services</description>
		<name>Template Example</name>
	</ns0:distribProfile>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`distribution-object`
	 * :ref:`linuxprofile-object`
	 * :ref:`osTemplatePkgs-get`
	 * :ref:`osTemplate-delete`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplate-getAll`
	 * :ref:`osTemplate-update`
	 * :ref:`windowsprofile-object`
