.. Copyright FUJITSU LIMITED 2016-2019

.. _osMilestone-update:

osMilestone_update
------------------

.. function:: PUT /distributions/{id}/milestones/{mid}

.. sidebar:: Summary

	* Method: ``PUT``
	* Response Code: ``200``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.5``

Updates the meta-data information of a milestone. 

Please refer to :ref:`milestone-object` for a complete list of all the ``milestone`` attributes.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``mid`` (required): the id of the :ref:`milestone-object`
* ``id`` (required): the id of the :ref:`distribprofile-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A :ref:`milestone-object` object

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/distributions/{id}/milestones/{mid}" -X PUT \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<ns0:milestone xmlns:ns0="http://www.usharesoft.com/uforge">
		<name>Milestone Example Updated</name>
		<source>official</source>
	</ns0:milestone>


.. seealso::

	 * :ref:`distribprofile-object`
	 * :ref:`milestone-object`
	 * :ref:`osMilestone-create`
	 * :ref:`osMilestone-delete`
	 * :ref:`osMilestone-get`
	 * :ref:`osMilestone-getAll`
	 * :ref:`osMilestone-update`
