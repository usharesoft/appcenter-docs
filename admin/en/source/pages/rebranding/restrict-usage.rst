.. Copyright 2016 FUJITSU LIMITED

.. _restrict-formats:

Restricting Formats
-------------------

UForge Portal allows users to generate the templates provided to all the formats the user has access to. In certain circumstances, you may wish to restrict the formats shown to the user.  To restrict the available machine image formats in the UI you rquire to update the ``config.xml`` file.

To disable a format in the UI configuration, find the ``<t:target>`` section of the machine image format you wish to disable, then either add or change the value of the ``<t:enabled>`` tag.  For example if you wish to deactivate OpenStack, then the following changes should be made to the configuration file:

.. code-block:: xml 

    <t:target>
        <t:id>openstack</t:id>
        <t:name>OpenStack</t:name>
        <t:enabled>false</t:enabled>
        <t:visible>true</t:visible>
    </t:target>
                    	

If you wish to hide a format completely, then update the ``<t:visible>`` tag to ``false``.

.. note:: Restricting formats for specific users can also been done through RBAC in the platform.

.. _restrict-cloud-accounts:

Restricting the Cloud Accounts
------------------------------

When using the UForge Portal, all the cloud account types are displayed. You can restrict the cloud accounts that are visible by updating the config.xml file of the UI.  To hide a specific cloud format, find the ``<t:account`` section of the account type you wish to hide, then update the ``<t:visible>`` tag to ``false``.  For example, if you wish to remove the CloudStack account type, then the following changes should be made to the configuration file:

.. code-block:: xml 

    <t:account>
        <t:id>cloudstack</t:id>
        <t:type>cloudstack</t:type>
        <t:name>Cloudstack</t:name>
        <t:visible>false</t:visible>
    </t:account>

