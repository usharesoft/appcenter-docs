.. Copyright FUJITSU LIMITED 2016-2019

.. _userStats-get:

userStats_get
-------------

.. function:: GET /users/{uid}/stats

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.4``

Retrieve statistics for an user. 

A list of :ref:`userstats-object` objects are returned.  The statistics data includes: 

* Current summary usage information. 

* User's quota. 

* Appliance activity.  This is timeline of appliances created and machine images generated from those appliances.  It includes a breakdown of operating systems used for the appliances and machine image formats of the machine images. 

* Scan activity.  This is the timeline of live machine scans created and machine images generated from those scans.  It includes a breakdown of the operating systems detected as part of the scan and machine image formats of the machine images. 

* User's disk usage.  This is the disk storage used for the user's software components (in the Software Library); machine images and scan meta-data.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``None``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/stats" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`quota-object`
	 * :ref:`statticket-object`
	 * :ref:`userQuotas-get`
	 * :ref:`userQuotas-update`
	 * :ref:`userStats-get`
	 * :ref:`userUsage-get`
