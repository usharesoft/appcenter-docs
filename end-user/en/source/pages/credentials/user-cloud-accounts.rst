.. Copyright 2017 FUJITSU LIMITED

.. _account-cloud-accounts:

Managing Cloud Accounts
-----------------------

In order to publish an image to a cloud using UForge AppCenter, you will need to add your cloud credentials to UForge. You must have a cloud account prior to setting up your credentials on the platform. Have all the information for your cloud account on hand before starting.

.. note:: If you are an Amazon IAM user you will need to generate an X.509 Certificate following `these instructions <http://www.dowdandassociates.com/blog/content/howto-generate-an-x-dot-509-certificate-for-an-amazon-iam-user/>`_ prior to creating your cloud account on UForge.

	1. Go to the ``Credentials`` tab in the left-hand sidebar.
	2. Go to ``Cloud Account``.
	3. Select the type of account you want to create from the ``Add account`` drop-down menu at the top right. 

	.. image:: /images/cloud-account-create.png

	4. Scroll over any given field for more information on the mandatory information to provide for a given cloud account.

	.. note:: In order to set up the credentials for an Amazon ARM account, there are a number of steps you must complete first. For more information refer to :ref:`azure-account`.

	5. Click ``Create`` to complete.

.. _azure-account:

Setting up a Microsoft Azure Resource Manager Account
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to publish images to Microsoft ARM, you must first set up the correct Azure ARM credentials in UForge. To do so, first, from your Microsoft Azure account you will need to:

	1. Create an Azure Active Directory application (as described in the `official Microsoft Azure documentation <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#create-an-azure-active-directory-application>`_).
	2. Get the application ID and authentication key (as described in `official Microsoft Azure documentation <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#get-application-id-and-authentication-key>`_).
	3. Retrive the tenant ID which you will need to enter in UForge credentials (as described in `official Microsoft Azure documentation <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#get-tenant-id>`_). 
	4. Assign the ``contributor`` role to the application (as described in `official Microsoft Azure documentation <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#assign-application-to-role>`_).

Then you will need to fill in your credential information in UForge. To do so:

	1. Go to the ``Credentials`` tab in the left-hand sidebar.
	2. Go to ``Cloud Account``.
	3. Select the ``Microsoft Azure Resource Manager`` from the ``Add account`` drop-down menu at the top right. 

	.. image:: /images/cloud-account-azure.png