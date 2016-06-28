.. Copyright 2016 FUJITSU LIMITED

.. _restrict-formats:

Restricting Formats
-------------------

UForge Portal allows users to generate the templates provided to all the formats the user has access to.  If you are using the UForge Online SaaS platform, users will have access to all the formats. In certain circumstances, you may wish to restrict the formats shown to the user. You can either grey out a format or remove it altogether.

To grey out a format, find the <t:format> section of the format you want to be greyed out. This format will remain visible, but will not be available to the users. Set enabled to false::

	<t:publish>
	    <t:enabled>false<t:enabled>
	<t:publish>

If you want to remove a format completely, then you can either comment it out (which will make it easier to integrate at a later time if needed), or you can simply remove the complete section, from <t:target> to </t:target>

.. _restrict-cloud-accounts:

Restricting the Cloud Accounts
------------------------------

When using the UForge Portal, all the cloud account types are displayed. You can restrict the cloud accounts visible using the config.xml file.  You can either comment out a cloud account type or remove it altogether. In both cases, the cloud account format will no longer be visible.

To remove the complete section, delete from <t:account> to </t:account>
