.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _manage-formats:

.. _set-formats:

Allowing Access to Image Formats
--------------------------------

Image formats can be managed at the level of the organization or of the user.

An administrator who wants to add format rights to several users within an organization should create the formats at the level of the organization and then add them to a subscription profile. In this case, all new users created with the given subscription profile will have access to the formats. 

In order to add a format you must create a target format and target platform. 

.. note:: Without a target platform, the image cannot be published. 

The administrator can add or remove image formats for a specific user account using the command-line interface, as described in :ref:`set-formats-user`.

.. _listing-formats:

Listing Formats
~~~~~~~~~~~~~~~

In UForge AppCenter, in order for a user to use a given format, a Target Format must be created and enabled for the given user and organization. Moreover, if the user wants to use a given Target Format for publishing an image, then a Target Platform must also be created, enabled and associated to the Target Format.

.. note:: As Target Platforms and Target Formats are created at the org level but then must be enabled for a given user, the list of available formats can differ for users of the same organization. 

In order to list the formats available for a given `org`, use the command ``org targetformat list``.

In order to list the formats available for a given `user`, use the command ``user targetformat list``.

.. _formats-org:

Adding Formats to an Organization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format to an organization, you must follow these steps:

	1. Create a target format category using  ``uforge org category create``
	2. Create target format using  ``uforge org targetformat create``
	3. If the target format type is Cloud, create a target platform using ``uforge org targetplatform create``. This target platform is necessary to publish image generated with the target format. The target platform will allow to create a cloud account associated
	4. If the target format type is Cloud, add the target format to the target platform using  ``uforge org targetplatform addTargetFormat``.
	5. (Optional) Add the format to a subscription profile using  ``uforge subscription targetFormat add``. To add a target platform use either: 

		* ``uforge subscription targetformat add``
		* ``uforge subscription targetplatform add``

	6. Enable the target format for the organization using  ``uforge org targetformat enable``.
	7. Enable the target format using ``user targetformat enable``.

Once the format is created in a organisation, you can either:

	* add it to a group of users by adding it to the subscription profile (refer to :ref:`formats-subscription`)
	* add it to an individual user (refer to :ref:`set-formats-user`)


