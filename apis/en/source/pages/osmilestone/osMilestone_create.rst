.. Copyright FUJITSU LIMITED 2016-2019

.. _osMilestone-create:

osMilestone_create
------------------

.. function:: POST /distributions/{id}/milestones

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Creates a milestone for an operating system. 

Please refer to :ref:`milestone-object` for a complete list of all the ``milestone`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`milestone-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/milestones" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:milestone xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Milestone Example</name>
		<date>2016-06-17T08:31:08.000Z</date>
		<source>test</source>
	</ns0:milestone>


.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`milestone-object`
	 * :ref:`osMilestone-create`
	 * :ref:`osMilestone-delete`
	 * :ref:`osMilestone-get`
	 * :ref:`osMilestone-getAll`
	 * :ref:`osMilestone-update`
