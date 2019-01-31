.. Copyright 2017-2019 FUJITSU LIMITED

User Data in UForge
-------------------

UForge AppCenter is a multi-tenant platform which can serve multiple users. In addition to the user profile which (which includes user name, email, phone number, address, etc) each user on the platform has (or can have):

	* an Appliance Library containing all the appliance templates created by the user 
	* a Software Library (My Software) containing all the custom software uploaded by the user, which can be used in one ore more appliance templates 
	* a list of one or more Cloud Accounts to allow the user to publish and register generated machine images to various cloud and virtualization platforms. Each user can also create and join workspaces. 
	* a workspace. This is an area where members collaborate and share appliances. 


.. _retrieve-user:

Retrieving User Data
--------------------

All the information about a specific User can be accessed by specifying the user name in ``user_get`` API call.
	
.. note:: The User, Address, Company and Photo must be deleted using an SQL request described in :ref:`delete-user-sql`.

The following is an example of a ``user_get API`` curl call:

.. code-block:: shell

	$ curl "http://10.1.2.41/api/users/john" -X GET -u root:uforgedemo -H "Accept: application/json" | json_pp
	  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
	                                 Dload  Upload   Total   Spent    Left  Speed
	100  5250    0  5250    0     0  47806      0 --:--:-- --:--:-- --:--:-- 48165
	{
	   "user" : {
	      "baseWorkspacesUri" : "users/john/workspaces",
	      "quotasUri" : "users/john/quotas",
	      "admin" : false,
	      "usageUri" : "users/john/usage",
	      "apiKeysQuota" : 2,
	      "digest" : "db79b9a897f9182f71e6c4efa4569f6c",
	      "loginName" : "john",
	      "name" : "john",
	      "jobTitle" : "inge",
	      "surname" : "Yorche",
	      "officePhone" : "330000000",
	      "loginName" : "john",
	      "homePhone" : "000000000",
	      "homePhone" : "000000000",
	      "website" : "mysite.com",
	      "firstName" : "smith",
	      "mobilePhone" : "044000000",
	      "email" : "john.smith@usharesoft.com",
	      "address" : {
	         "country" : "Mexico",
	         "town" : "mexico",
	         "digest" : "ebceef9e30482733426c75990160c7aa",
	         "lastModified" : "2018-04-17T07:45:32.000Z",
	         "dbId" : 101,
	         "created" : "2018-04-16T11:43:59.000Z",
	         "region_state" : "df"
	      },
	      "company" : {
	         "name" : "myCompany",
	         "website" : "gugle.com",
	         "dbId" : 101,
	         "uri" : "users/john/company/101",
	         "created" : "2018-04-16T11:43:59.000Z",
	         "lastModified" : "2018-04-16T11:23:29.000Z",
	         "digest" : "90978c0fa8ed8029e2db864d19d1db42",
	         "address" : {
	            "created" : "2018-04-16T11:43:59.000Z",
	            "digest" : "8244b7c44a9856e1a8e0151e7ae13029",
	            "lastModified" : "2018-04-16T09:43:59.000Z",
	            "dbId" : 102
	         },
	         "parentUri" : "users/john",         
	      },
	      "photo" : {
	         "uploaded" : false,
	         "lastModified" : "2018-04-16T09:43:59.000Z",
	         "dbId" : 101,
	         "uri" : "users/john/photo/101",
	         "digest" : "db59d1d9a96cbf267dd94947c0211ba3",
	         "parentUri" : "users/john",
	         "created" : "2018-04-16T11:43:59.000Z"
	      },
	      "scannedInstancesUri" : "users/john/scannedinstances",
	      "baseDistributionsUri" : "users/john/distros",
	      "scansUri" : "users/john/scans",
	      "baseAppliancesUri" : "users/john/appliances",
	      "baseProjectsUri" : "users/john/projects",
	      "instancesUri" : "users/john/instances",
	      "mySoftwareImportsUri" : "users/john/bundleimports",
	      "active" : true,
	      "orgUris" : {
	         "uri" : []
	      },
	      
	      "applianceUris" : {
	         "uri" : []
	      },
	      "baseOrgsUri" : "users/john/orgs",
	      "baseImagesUri" : "users/john/images",
	      "creationCode" : "default",
	      "baseTagsUri" : "users/john/tags",
	      "baseFormatsUri" : "users/john/formats",
	      "baseExportsUri" : "users/john/exports",
	      "adminOrgsUri" : "users/john/adminOrgs",
	      "dbId" : 101,
	      "credAccountUris" : {
	         "uri" : []
	      },
	      "statsUri" : "users/john/stats",
	      "baseMySoftwareLibraryUri" : "users/john/mysoftware",
	      "baseTargetFormatsUri" : "users/john/targetformats",
	      "baseRankingsUri" : "users/john/rankings",
	      "baseImportsUri" : "users/john/imports",
	      "sshKeys" : {
	         "sshKey" : []
	      },
	      "roles" : {
	         "role" : [
	            {
	               "description" : "Allows a user to manage his profile.",
	               "entitlements" : {
	                  "entitlement" : [
	                     {
	                        "description" : "Ability to change the user's own password",
	                        "name" : "user_change_password"
	                     },
	                     {
	                        "name" : "user_profile_edit",
	                        "description" : "Ability to edit the user's own profile information"
	                     },
	                     {
	                        "name" : "user_profile_access",
	                        "description" : "Access to manage the user's own profile information"
	                     }
	                  ]
	               },
	               "name" : "user"
	            },
	            {
	               "entitlements" : {
	                  "entitlement" : [
	                     {"description" : "Access to edit and manage one or more cloud accounts (your credentials to one or more cloud environments).",
	                        "name" : "cloud_account_edit"
	                     },
	                     {
	                        "description" : "Access to generate images.",
	                        "name" : "image_generate"
	                     },
	                     {
	                        "description" : "Access to upload (or publish) generated images to cloud environments.",
	                        "name" : "image_publish"
	                     },
	                     {"description" : "used to determine whether to allow a user to interact with the marketplace (note, will be able to retrieve templates + template info, but voting, adding a comment, import, follow etc forbidden)",
	                        "name" : "marketplace_access"
	                     },
	                     {
	                        "name" : "software_upload",
	                        "description" : "Access to upload and manage your own custom software library.  These software components can be added to your own appliance templates."
	                     },
	                     {
	                        "name" : "cloud_account_delete",
	                        "description" : "Access to delete one or more cloud accounts associated with your UForge account."
	                     },
	                     {"description" : "Access to your own private appliance template library where you can create and manage your own appliance templates.",
	                        "name" : "appliance_create"
	                     },
	                     {"description" : "Access to create one or more cloud accounts (your credentials to one or more cloud environments).",
	                        "name" : "cloud_account_create"
	                     },
	                     {  "name" : "cloud_account_access",
	                        "description" : "Access to just listing cloud accounts."
	                     },
	                     {"description" : "[Deprecated UForge 3.6] Access to import public templates from the marketplace into your private appliance template library.",
	                        "name" : "marketplace_import"
	                     }
	                  ]
	               },
	               "name" : "designer",
	               "description" : "Provide access to a private appliance template library.  This allows the user to create and manage appliance templates; generate images and publish the images to a cloud environment."
	            }
	         ]
	      },
	      "baseGalleriesUri" : "users/john/galleries",
	      "vAppAccess" : {
	         "digest" : "339b229bf737176bb6be0be176296ef9",
	         "dbId" : 101,
	         "lastModified" : "2018-04-16T09:43:59.000Z",
	         "allowed" : false,
	         "cryptAlgo" : 0,
	         "created" : "2018-04-16T11:43:59.000Z"
	      },
	      "adminOrgUris" : {
	         "uri" : []
	      },
	      "productAccess" : {
	         "cryptAlgo" : 0,
	         "created" : "2018-04-16T11:43:59.000Z",
	         "allowed" : false,
	         "dbId" : 101,
	         "lastModified" : "2018-04-16T09:43:59.000Z",
	         "digest" : "b0bca8cf30c3109611297a60f90d85d2"
	      },
	      "artifactAccountsUri" : "users/john/artifactaccounts",      
	      "baseTargetPlatformsUri" : "users/john/targetplatforms",
	      "baseApiKeysUri" : "users/john/apikeys",
	      "baseRolesUri" : "users/john/roles",
	      "projectUris" : {
	         "uri" : []
	      },
	      "sshKeysUri" : "users/john/sshkeys",
	      "publishGalleries" : {
	         "gallery" : []
	      },
	      "rankings" : {
	         "ranking" : []
	      },
	      "mySoftwareLibraryUris" : {
	         "uri" : []
	      },
	      "baseGalleryOrgsUri" : "users/john/gorgs",
	      "lastModified" : "2018-04-17T07:45:32.000Z",
	      "baseCredAccountsUri" : "users/john/accounts",
	      "created" : "2018-04-16T11:43:59.000Z",
	      "tags" : {
	         "tag" : []
	      },
	      "uri" : "users/john",
	      "basePublishImagesUri" : "users/john/pimages"
	   }
	}

.. _update-user:

Updating User Data
-------------------

The personal information of a specific User can be updated by specifying the User DTO in the following API call: ``user_update``.
