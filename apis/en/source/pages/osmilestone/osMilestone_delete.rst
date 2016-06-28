.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _osMilestone-delete:

osMilestone_delete
------------------

.. function:: DELETE /distributions/{id}/milestones/{mid}

.. sidebar:: Summary

	* Method: ``DELETE``
	* Response Code: ``204 / 200``
	* Response Formats: 
	* Since: ``UForge 3.5``

Removes a milestone from an operating system.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``mid`` (required): 
* ``id`` (required): the id of the :ref:`milestone-object` to remove

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "/distributions/{id}/milestones/{mid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`milestone-object`
	 * :ref:`distribprofile-object`
	 * :ref:`osMilestone-create`
	 * :ref:`osMilestone-delete`
	 * :ref:`osMilestone-get`
	 * :ref:`osMilestone-getAll`
	 * :ref:`osMilestone-update`
