.. Copyright 2016 FUJITSU LIMITED

.. _manage-formats:

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

Adding Formats to an Organization Using the CLI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add access to a format to an organization, you must:

	1. Create a target format category using  ``uforge org category create``
	2. Create target format using  ``uforge org targetformat create``
	3. If the target format type is Cloud, create a target platform using ``uforge org targetplatform create``. This target platform is necessary to publish image generated with the target format. The target platform will allow to create a cloud account associated
	4. If the target format type is Cloud, add the target format to the target platform using  ``uforge org targetplatform addTargetFormat``.
	5. (Optional) Add the format to a subscription profile using  ``uforge subscription targetFormat add``. To add a target platform use either: 

		* ``uforge subscription targetformat add``
		* ``uforge subscription targetplatform add``

	.. note:: In order to force the changes to apply to all users (even those already created), use the option ``--allusers``. For example: 

	.. code-block:: shell

		$ uforge subscription targetformat add --targetformat ovf qcow2 vbox --allusers --name sub --url https://uforge.usharesoft.com:443 -u $ADMIN -p $PASS

	6. Enable the target format for the organization using  ``uforge org targetformat enable``.
	7. Enable the target format using ``user targetformat enable``.

Once the format is created in an organisation, you can either:

	* add it to a group of users by adding it to the subscription profile (refer to :ref:`formats-subscription`)
	* add it to an individual user (refer to :ref:`set-formats-user`)

Adding Image Formats from the GUI
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can create your own image formats from the UForge GUI. To do so:

	1. Create a target platform.
	2. Create a target format.

`Create a Target Platform`

To create a target platform:

	1. From the ``Administration`` tab, click on ``Target Platforms``.
	2. In the top right-hand, click on ``new target platform``.

	.. image:: /images/target-platform-button.png

	3. Enter the name of the target platform.
	4. Select the type from the drop-down menu.
	5. Optionally you can click on the plus (+) to add a logo.
	6. If you do not want the target platform to be visible immediately, click on the check box next to ``Enable`` to deselect.
	7. Click ``create`` in the top right to complete the creation.

	.. image:: /images/target-platform-create.png


`Create a Target Format`

To create a target format:

	1. From the ``Administration`` tab, click on ``Target Platforms``.
	2. In the top right-hand, click on ``new target format``.

		.. image:: /images/target-format-button.png

	3. From the drop-down menu, choose the target format category and click the next arrow button.
	4. Enter the name of the target format.
	5. Select the type and the image format from the drop-down menus.
	6. Optionally you can click on the plus (+) to add a logo.
	7. If you do not want the target format to be visible immediately, click on the check box next to ``Enable`` to deselect.
	8. On the ``Tooltips`` page enter the Credentials, image and publish information.
	9. On the ``Target Platforms`` page you can attach your target format to a target platform. To add the target format to a target platform, select the target platform from the botton table and click the up arrow. Your target format will be attached to all the target platforms listed in the top table will be part of the part format you are creating.
	10. Click next to complete.

		.. image:: /images/target-format-create.png



