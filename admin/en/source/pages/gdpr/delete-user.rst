.. Copyright 2017 FUJITSU LIMITED

.. _delete-user:

Deleting User Information
-------------------------

The GDPR introduces a right for individuals to have personal data erased. Individuals can request their data be deleted verbally or in writing.

.. note:: All data related to the user contained in UForge, such as Appliances, scans, credential accounts or software components, must be deleted before deleting the User. This means you need to identify all the elements related to a given user. Refer to :ref:`retrieve-user`.

Delete Appliances
~~~~~~~~~~~~~~~~~

Use ``appliance_delete`` to delete the specified appliance, the following API call should be used, only {uid} should be replaced by the login name of the user to erase. 

In order to get the appliance ID {aid} for each appliance created by the user to be erased, use ``appliance_getAll`` API call has to be used:

Example of how to get the list of IDs of all the appliance linked to a specific User:

.. code-block:: shell

	[jorge@jorge ~]$ curl "http://10.1.2.41/api/users/jorge2/appliances" -X GET -u jorge2:can.bin.hog -H "Accept: application/json" | json_pp  | grep applianceUri
	  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
	                                 Dload  Upload   Total   Spent    Left  Speed
	100 30284    0 30284    0     0   166k      0 --:--:-- --:--:-- --:--:--  167k
	                  "applianceUri" : "users/jorge2/appliances/201",
	                  "applianceUri" : "users/jorge2/appliances/201",
	                  "applianceUri" : "users/jorge2/appliances/203",
	                  "applianceUri" : "users/jorge2/appliances/203",
	                  "applianceUri" : "users/jorge2/appliances/204",
	                  "applianceUri" : "users/jorge2/appliances/204"
	                  "applianceUri" : "users/jorge2/appliances/301"
	                  "applianceUri" : "users/jorge2/appliances/301",

Note the IDs of all the appliances in order to use them as the `{aid}` parameter in ``appliance_delete``.

.. note:: This also deletes all associated machine images (and possible associated image publications) that have been generated from this appliance.


.. code-block:: shell

	curl "https://uforge.example.com/api/users/{uid}/appliances/{aid}" -X DELETE \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

Deleting Imported Appliances
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Similarly imported appliances should be deleted using ``applianceImport_delete``


Deleting My Software Objects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use ``mySoftware_delete`` to remove a software component from a user’s private Software Library

Use ``mySoftwareArtifact_delete`` to remove a software artifact binary from a software component.

Deleting Scans
~~~~~~~~~~~~~~

Use ``scanInstance_deleteAll`` to remove all the scanned instances for a user.  This call will also delete all the children scan reports and overlay files associated with the scan.

Deleting Machine Images
~~~~~~~~~~~~~~~~~~~~~~~

Use  ``machineImage_deleteAll`` to delete all the machine images generated from an appliance. This will not automatically delete published images.


Deleting Published Images
~~~~~~~~~~~~~~~~~~~~~~~~~

Use the ``scanPublishedImage_delete`` to delete the images published based on a machine image. This will not automatically delete the machine image.

Deleting Migration Object
~~~~~~~~~~~~~~~~~~~~~~~~~

Use ``migration_deleteAll`` to delete all finished migrations created by a particular user.


Deleting Credentials Information
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

UForge sorts certain credential information. The following may or may not exist for a given user.

	* API key. Use ``apiKey_delete`` to delete an API key from the specified user API keys.
	* Cloud Account. Use ``cloudAccount_delete`` to delete a cloud account from the specified user cloud accounts.
	* SSH key. Use ``sshKey_delete`` to delete an ssh key from the specified user ssh keys.
 
Deleting a User from a Workspace
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A user may be part of user workspaces. In order to remove a user from a workspace, use ``workspaceMember_delete``

.. note:: You will not be able to delete a user from a workspace if this user is the administrator. In this case, you must promote another user as administrator before deleting the user.

.. _delete-user-sql:

Deleting User Information Using SQL
-----------------------------------

UForge API does not provide an API method for deleting a User. The  SQL requests have to be executed. 

.. warning:: All data related to the user contained in UForge, such as Appliances, scans, cred accounts or software components, must be deleted before deleting the User.

.. note:: The table where User information is stored is actually called ``Customers``, so the ID of Customer has identified to be able to execute these SQL requests. The Customer ID can be found using the ``get_user`` API call and looking for field ``dbId`` inside the User Json objet.

The following is an example of what needs to be deleted (some of these may be empty as not all these fields are mandatory)

.. code-block:: shell

	DELETE FROM addr USING usharedb.AddressesAuth AS addr INNER JOIN usharedb.Customers as cu WHERE cu.db_id = addr.db_id and cu.db_id = '102';
	DELETE FROM comp USING usharedb.CompaniesAuth AS comp INNER JOIN usharedb.Customers as cu WHERE cu.db_id = comp.db_id and cu.db_id = '102';
	DELETE FROM lo 	 USING usharedb.LogosAuth     AS lo   INNER JOIN usharedb.Customers as cu WHERE cu.db_id = lo.db_id   and cu.db_id = '102';
	DELETE FROM cu USING usharedb.Customers AS cu WHERE cu.db_id = '102';
	DELETE FROM uo   USING uauthdb.lt_user_orgs    AS uo   INNER JOIN uauthdb.Customers  as cu   WHERE cu.db_id = uo.user_id   and cu.db_id = '102';
	DELETE FROM uapi USING uauthdb.lt_user_apikeys AS uapi INNER JOIN uauthdb.Customers as cu   WHERE cu.db_id = uapi.user_id and cu.db_id = '102';
	DELETE FROM addr USING uauthdb.Addresses       AS addr INNER JOIN uauthdb.Customers as cu   WHERE cu.db_id = addr.db_id   and cu.db_id = '102';
	DELETE FROM comp USING uauthdb.Companies       AS comp INNER JOIN uauthdb.Customers as cu   WHERE cu.db_id = comp.db_id   and cu.db_id = '102';
	DELETE FROM lo 	 USING uauthdb.Logos           AS lo   INNER JOIN uauthdb.Customers  as cu   WHERE cu.db_id = lo.db_id     and cu.db_id = '102';
	DELETE FROM cu   USING uauthdb.Customers 	   AS cu   INNER JOIN usharedb.Customers as uscu WHERE cu.db_id = uscu.db_id   and cu.db_id = '102';

