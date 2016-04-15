.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _email-notification:

Email Notification Service
--------------------------

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

	1.  Log in to the node as root and edit the uforge.conf file::

		vi /etc/UShareSoft/uforge/uforge.conf

	2.  Run the script to force UForge to use the new uforge.conf file, this will restart certain UForge services::

		/opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh

Customizing the Email Templates
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can modify or internationalize the information sent during an email notification. UForge provides a set of default templates for each email type sent by the system. The templates are stored in: /opt/UShareSoft/uforge/tmpl

.. warning:: When UForge is upgraded all the templates in the default directory will be overwritten.  To ensure that any custom templates are restored during an update, a copy must be made of the custom template. 

User account management emails:

	* ``ForgotPasswordEmail.tmpl`` – email sent to the user when resetting their account password
	* ``SubscriptionAdminEmail.tmpl`` – email sent to the administrator when a new user account has been created
	* ``SubscriptionUserEmail.tmpl`` – email sent to the user requesting a new UForge account

Error emails:

	* ``ImageGenerationErrorMessage.tmpl`` – email sent to administrator when an image generation failure occurs
	* ``WebServiceErrorsMessage.tmpl`` (not used today)

Marketplace notification emails:

.. note:: These are only applicable if your Uforge AppCenter is connected to a Marketplace. Otherwise, disregard. 

	* ``AppStoreNotificationNewComment.tmpl`` – email sent to the user watching the template where a new comment is added
	* ``AppStoreNotificationTemplateNew.tmpl`` – email sent to the user watching the template where a new version of the current template is available
	* ``AppStoreNotificationTemplateUpdate.tmpl`` – email sent to the user watching the template where  the template is updated by the publisher
	* ``AppStoreTemplateReportAbuse.tmpl`` – email sent to the administrator when a user reports an abuse for a comment in a template
	* ``AppStoreTemplateReportAbuseConfirm.tmpl`` – confirmation email sent to the user reporting an abuse

The following keywords are reserved for substituting information into the emails:

	* ``#USER#`` - The user name of the person carrying out the request
	* ``#EMAIL#`` - The email of the user carrying out the request
	* ``#PASSWD#`` - The password of the new user account created or during a “forgotten password” request

Specific keywords for Marketplace (App Store) email notifications:
	* ``#COMMENT#`` - The comment added to a template in the Marketplace
	* ``#REPORTER#`` - The user name of the person carrying out the request (used for adding a comment or reporting an abuse)
	* ``#REPORTEREMAIL#`` - The user name of the person carrying out the request (used for adding a comment or reporting an abuse)
	* ``#NBREPORTEDABUSE#`` - The total number of times this comment has been flagged as abusive
	* ``#CMDACCEPTABUSE#`` - The command to use to remove the comment from the Template in the  Marketplace
	* ``#TEMPLATENAME#`` - The name of the template in the Marketplace
	* ``#PUBLISHDATE#`` - The date the template was published in the Marketplace
	* ``#TEMPLATEVERSION#`` - The version of the template published in the Marketplace
	* ``#ORGNAME#`` - The organization name where the Marketplace resides
	* ``#PUBLISHEREMAIL#`` - The email address of the publisher (to the Marketplace)

UForge uses the directory /var/opt/UShareSoft for custom files.  If this directory exists, as part of the upgrade process and custom files will be restored.

.. warning:: When UForge is upgraded all the templates in the default directory will be overwritten.  To ensure that any custom templates are restored during an update, a copy must be made of the custom template. 

Therefore to change an email template: 

	1. Log in to the node as root then go to the template directory:

	.. code-block:: shell

		# cd /opt/UShareSoft/uforge/tmpl
		# vi AppStoreNotificationNewComment.tmpl

	2. Change the contents of the template and rename using the extension for the new language, if appropriate.

	3. Copy the new template to all the other nodes of the UForge AppCenter.

	4. Save a copy of the new template to protect against an upgrade overwriting the custom template:

	.. code-block:: shell

		# mkdir -p /var/opt/UShareSoft/uforge/tmpl
		# cp /opt/UShareSoft/uforge/tmpl/AppStoreNotificationNewComment.tmpl /var/opt/UShareSoft/uforge/tmpl

	5. Instantiate the following changes by running the following command::

		/opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh
