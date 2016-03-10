.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _configure-uforge:

Configuring UForge
------------------

Once the installation is complete on all the nodes you wish to use for the UForge platform, you are now ready to configure all the UForge platform services.  This is done via the UForge Deployment Wizard that helps guide you through the final steps of the installation process.

To launch the UForge Deployment Wizard, use your browser and go to one of the nodes that have been installed:

http://<ip address of the node>:9998/deployments

Fill in the wizard, note that all the fields are mandatory.

	1. Enter the Organization name. This is the name of the default Organization.  The organization groups all the operating systems, formats and users for the platform. 

	2. Enter an email address.  This is the email address of the root administrator of UForge.  All administration email notifications are sent to this email address.

	3. Set the root administrator's password. The password must be at least seven characters long.

	4. Provide a username, email and password for an initial user account to be created.  This user account will have administration access rights for the default Organization.

	5. Provide the UForge activation key and credential information to be able to receive UForge updates.  If you do not have this information, please contact UShareSoft.

	6. Select the operating systems and formats you would like to install. 
	When you select an OS, a default mirror location is indicated. This is used for synchronization of packages and distributions.  You can either accept the default values or modify the value to synchronize with another mirror.

	7. Decide whether you would like to populate UForge with UShareSoft's default project list.  This list must already be copied to the UForge repository in the storage used for this deployment.

	8. Set the internet connection. By default, UForge expects to have a direct connection to the internet. If you de-select this option, you will need to enter the proxy hostname and port.

	9. Set the SMTP Server to use for sending email notification messages created by UForge.  If you want to use a SMTP relay, then also indicate the relay hostname and port number.

	10. Click ``next`` to continue.

	11. Enter the Web Server IP address, external hostname and the database IP address. 

	12. Select if OS and image storage should be local or remote. OS storage will be used for distributions, which image storage will include user data such as images, projects, mysoftware and other user data created with UForge Portal.

	If you choose to use a remote storage, indicate the NFS server with mount point and you should enter the full path for the OS directory e.g. /DISTROS.

	If you select remote storage for the image store, you have to make sure that the path USER_DATA exists, with the correct permissions i.e. glassfish:glassfish (see UForge Repository Using Shared Storage, step 4. Check mount points, for more detail).

	13. Indicate the generation cluster compute node hostnames. You can add additional compute nodes by clicking the add button.

	14. Once you have finished the configuration, click the ``Deploy`` button.

	.. note: The deployment may take a few hours, depending on the number of operating systems you have chosen.

	15. Once the deployment is complete, click ``Finish``. 
