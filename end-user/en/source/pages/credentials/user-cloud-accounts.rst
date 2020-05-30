.. Copyright 2016-2019 FUJITSU LIMITED

.. _account-cloud-accounts:

Managing Cloud Accounts
-----------------------

In order to publish an image to a cloud using UForge AppCenter, you will need to add your cloud credentials to UForge. You must have a cloud account prior to setting up your credentials on the platform. Have all the information for your cloud account on hand before starting.


	1. Go to the ``Credentials`` tab in the left-hand sidebar.
	2. Go to ``Cloud Account``.
	3. Select the type of account you want to create from the ``Add account`` drop-down menu at the top right. 

	.. image:: /images/cloud-account-create.png

	4. Scroll over any given field for more information on the mandatory information to provide for a given cloud account.

	.. note:: In order to set up the credentials for a Microsoft Azure account, there are a number of steps you must complete first. For more information refer to :ref:`azure-account`.

	5. Click ``Create`` to complete.

.. _azure-account:

Setting up a Microsoft Azure Account
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to publish images to Microsoft Azure, you must first set up the correct Microsoft Azure credentials in UForge. To do so, first, from your Microsoft Azure account you will need to:

	1. Create an Azure Active Directory application (as described in the `official Microsoft Azure documentation related to Azure Active Directory creation <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#create-an-azure-active-directory-application>`_).
	2. Get the subscription ID from your Microsoft Azure account.
	3. Get the application ID and authentication key (as described in `official Microsoft Azure documentation related to application ID and authentication key <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#get-application-id-and-authentication-key>`_).
	4. Retrieve the tenant ID which you will need to enter in UForge credentials (as described in `official Microsoft Azure documentation related to tenant ID retrieval <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#get-tenant-id>`_). 
	5. Assign the ``contributor`` role to the application (as described in `official Microsoft Azure documentation related to application role assignation <https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-create-service-principal-portal#assign-application-to-role>`_).

	.. note:: The above steps are also required when setting up a Microsoft Azure account for Azure Stack.

Then you will need to fill in your credential information in UForge. To do so:

	1. Go to the ``Credentials`` tab in the left-hand sidebar.
	2. Go to ``Cloud Account``.
	3. Select ``Microsoft Azure`` from the ``Add account`` drop-down menu at the top right.

	.. image:: /images/cloud-account-azure.png

.. note:: When creating a cloud account for Azure Stack, it is also necessary to turn on ``Use private endpoint``, and in ``Endpoint URL`` input the Azure Stack's Resource Manager Endpoint. For example: ``https://management.local.azurestack.external``.

.. _windows-aws-s3:

Setting up an AWS Account to Publish Images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Setting up VM Import Service Role**

.. note:: Before publishing a Windows image to AWS, you must create a role named ``vmimport`` in your account. Refer to the procedure in `VM Import Service Role section of the AWS documentation <https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html>`_. Because the name of a S3 bucket changes for each image publish, you should give access to any buckets using a wildcard `*`.

Use the following ``role-policy.json`` instead of the one in the AWS documentation above:

	.. code-block:: json

		{
		   "Version":"2012-10-17",
		   "Statement":[
		      {
		         "Effect":"Allow",
		         "Action":[
		            "s3:GetBucketLocation",
		            "s3:GetObject",
		            "s3:ListBucket" 
		         ],
		         "Resource":[
		            "arn:aws:s3:::*"
		         ]
		      },
		      {
		         "Effect":"Allow",
		         "Action":[
		            "ec2:ModifySnapshotAttribute",
		            "ec2:CopySnapshot",
		            "ec2:RegisterImage",
		            "ec2:Describe*"
		         ],
		         "Resource":"*"
		      }
		   ]
		}

**Setting up an AWS Account**

The permissions for EC2 and S3 services must be properly assigned to an AWS account which you use to publish images.
Please refer to `Access Management section of the AWS documentation <https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html>`_ for further information about the AWS permissions.

The following is an example of the policy for publishing Linux images:

	.. code-block:: json

		{
		    "Version": "2012-10-17",
		    "Statement": [
		        {
		            "Effect": "Allow",
		            "Action": [
		                "s3:GetBucketLocation",
		                "s3:GetObject",
		                "s3:ListBucket",
		                "s3:ListAllMyBuckets"
		            ],
		            "Resource": [
		                "arn:aws:s3:::*"
		            ]
		        },
		        {
		            "Effect": "Allow",
		            "Action": [
		                "ec2:AttachVolume",
		                "ec2:AuthorizeSecurityGroupIngress",
		                "ec2:CreateImage",
		                "ec2:CreateKeyPair",
		                "ec2:CreateSecurityGroup",
		                "ec2:CreateTags",
		                "ec2:CreateVolume",
		                "ec2:CreateVpc",
		                "ec2:DeleteKeyPair",
		                "ec2:DeleteSecurityGroup",
		                "ec2:DeleteVolume",
		                "ec2:DeleteVpc",
		                "ec2:DeregisterImage",
		                "ec2:Describe*",
		                "ec2:DetachVolume",
		                "ec2:GetConsoleOutput",
		                "ec2:ModifyInstanceAttribute",
		                "ec2:RevokeSecurityGroupIngress",
		                "ec2:RunInstances",
		                "ec2:StartInstances",
		                "ec2:StopInstances",
		                "ec2:TerminateInstances"
		            ],
		            "Resource": "*"
		        }
		    ]
		}


The following is an example of the policy for publishing Windows images:

	.. code-block:: json

		{
		    "Version": "2012-10-17",
		    "Statement": [
		        {
		            "Sid": "VisualEditor0",
		            "Effect": "Allow",
		            "Action": [
		                "s3:GetObject",
		                "s3:ListBucket",
		                "s3:GetBucketLocation",
		                "s3:ListAllMyBuckets",
		                "s3:CreateBucket",
		                "s3:PutObject",
		                "s3:DeleteObject",
		                "s3:DeleteBucket"
		            ],
		            "Resource": "arn:aws:s3:::*"
		        },
		        {
		            "Sid": "VisualEditor1",
		            "Effect": "Allow",
		            "Action": [
		                "ec2:ImportImage",
		                "ec2:DescribeImportImageTasks",
		                "ec2:CancelImportTask",
		                "ec2:CreateTags"
		            ],
		            "Resource": "*"
		        }
		    ]
		}


The following is an example of the policy for publishing both Linux and Windows images:

	.. code-block:: json

		{
		    "Version": "2012-10-17",
		    "Statement": [
		        {
		            "Effect": "Allow",
		            "Action": [
		                "s3:GetBucketLocation",
		                "s3:GetObject",
		                "s3:ListBucket",
		                "s3:ListAllMyBuckets",
		                "s3:CreateBucket",
		                "s3:PutObject",
		                "s3:DeleteObject",
		                "s3:DeleteBucket"
		            ],
		            "Resource": [
		                "arn:aws:s3:::*"
		            ]
		        },
		        {
		            "Effect": "Allow",
		            "Action": [
		                "ec2:AttachVolume",
		                "ec2:AuthorizeSecurityGroupIngress",
		                "ec2:CreateImage",
		                "ec2:CreateKeyPair",
		                "ec2:CreateSecurityGroup",
		                "ec2:CreateTags",
		                "ec2:CreateVolume",
		                "ec2:CreateVpc",
		                "ec2:DeleteKeyPair",
		                "ec2:DeleteSecurityGroup",
		                "ec2:DeleteVolume",
		                "ec2:DeleteVpc",
		                "ec2:DeregisterImage",
		                "ec2:Describe*",
		                "ec2:DetachVolume",
		                "ec2:GetConsoleOutput",
		                "ec2:ModifyInstanceAttribute",
		                "ec2:RevokeSecurityGroupIngress",
		                "ec2:RunInstances",
		                "ec2:StartInstances",
		                "ec2:StopInstances",
		                "ec2:TerminateInstances",
		                "ec2:ImportImage",
		                "ec2:CancelImportTask"
		            ],
		            "Resource": "*"
		        }
		    ]
		}
