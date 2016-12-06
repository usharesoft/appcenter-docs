.. Copyright 2016 FUJITSU LIMITED

.. _osTemplate-update:

osTemplate_update
-----------------

.. function:: PUT /distributions/{id}/profiles/{prid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.6``

Updates the meta-data information of an OS template. 

Please refer to :ref:`distribprofiletemplate-object` for a complete list of all the ``OS template`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``org_os_profiles_administrate``

URI Parameters
~~~~~~~~~~~~~~

* ``prid`` (required): the id of the :ref:`distribprofiletemplate-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`distribProfileTemplate-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/profiles/{prid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:distribProfileTemplate xmlns:ns0="http://www.usharesoft.com/uforge">
		<description>This is an updated description</description>
		<name>Template Example - Updated</name>
	</ns0:distribProfileTemplate>


.. seealso::

	 * :ref:`appliance-object`
	 * :ref:`distribprofile-object`
	 * :ref:`distribprofile-object`
	 * :ref:`distribprofiletemplate-object`
	 * :ref:`osTemplatePkgs-get`
	 * :ref:`osTemplate-create`
	 * :ref:`osTemplate-delete`
	 * :ref:`osTemplate-get`
	 * :ref:`osTemplate-getAll`
