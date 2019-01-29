.. Copyright 2016-2019 FUJITSU LIMITED

.. _email-notification:

Configuring Email Notification Service
--------------------------------------

The UForge AppCenter provides an email notification service using RabbitMQ to notify the super-user administrator and users via email for certain types of information. 

Email notifications are triggered for the administrator when:

	* There is a server template generation failure.
	* A new user has been created on the platform (or in the case where this is manual, a request for a new user account to be created).
	* A user has reported an abusive comment that requires moderation.

Email notifications are triggered to the end users when:

	* A new user account has been created using their email address.  This includes information on their credential information to access UForge.
	* For all the templates the user is “following”, emails are sent when the template is updated or a new comment has been added to the template.

Changing Email Address for Notifications
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

During the initial install of the UForge AppCenter, you must set the email address for the administrator.  If you need to change the administrator's email address then you must update the uforge.conf file for each node that comprises the UForge AppCenter. UForge allows you to have a different email address for:

	* new registrations (user account creations) to UForge
	* all other administrator emails (generation failures etc)

You can also provide a no-reply email address when an email is sent.

To change the email address: 

	1.  Log in to the node as root and edit the ``uforge.conf`` file::

		$ vi /etc/UShareSoft/uforge/uforge.conf

	2. Update the following variables:

		* ``UFORGE_REGISTRATIONS_EMAIL``: to receive notifications on new user accounts being created
		* ``UFORGE_POSTMASTER_EMAIL``: to receive all other email notifications (errors etc)

	3.  Run the script to force UForge to use the new ``uforge.conf`` file, this will restart certain UForge services (if multi-node the following order should be respected: compute notes, db nodes, web service nodes)::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh


Customizing the Email Templates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can modify or internationalize the information sent during an email notification. UForge provides a set of default templates for each email type sent by the system. The templates are stored in: ``/opt/UShareSoft/uforge/tmpl``

.. warning:: When UForge is upgraded all the templates in the default directory will be overwritten.  To ensure that any custom templates are restored during an update, a copy must be made of the custom template. 

User account management emails:

	* ``ForgotPasswordEmail.tmpl`` – email sent to the user when resetting their account password
	* ``SubscriptionAdminEmail.tmpl`` – email sent to the administrator when a new user account has been created
	* ``SubscriptionUserEmail.tmpl`` – email sent to the user requesting a new UForge account

Error emails:

	* ``ImageGenerationErrorMessage.tmpl`` – email sent to administrator when an image generation failure occurs
	* ``WebServiceErrorsMessage.tmpl`` (not used today)


The following keywords are reserved for substituting information into the emails:

	* ``#USER#`` - The user name of the person carrying out the request
	* ``#EMAIL#`` - The email of the user carrying out the request
	* ``#PASSWD#`` - The password of the new user account created or during a “forgotten password” request
	* ``#WORKSPACE#`` - The name of the workspace in the Collaboration Tab
	* ``#REFERRER_NAME#`` - The name of the user who invited a guest to join a workspace
	* ``#MESSAGE#`` - The content of the message the referrer sent to the guest


UForge uses the directory ``/var/opt/UShareSoft`` for custom files.  If this directory exists, as part of the upgrade process and custom files will be restored.

.. warning:: When UForge is upgraded all the templates in the default directory will be overwritten.  To ensure that any custom templates are restored during an update, a copy must be made of the custom template. 

Therefore to change an email template: 

	1. Log in to the node as root then go to the template directory:

	.. code-block:: shell

		$ cd /opt/UShareSoft/uforge/tmpl
		$ vi AppStoreNotificationNewComment.tmpl

	2. Change the contents of the template and rename using the extension for the new language, if appropriate.

	3. Copy the new template to all the other nodes of the UForge AppCenter.

	4. Save a copy of the new template to protect against an upgrade overwriting the custom template:

	.. code-block:: shell

		$ mkdir -p /var/opt/UShareSoft/uforge/tmpl
		$ cp /opt/UShareSoft/uforge/tmpl/AppStoreNotificationNewComment.tmpl /var/opt/UShareSoft/uforge/tmpl

	5. Instantiate the changes by running the following command::

		$ /opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
