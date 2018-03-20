.. Copyright 2017 FUJITSU LIMITED

.. _account-user-profile:

Modifying Your User Profile
---------------------------

You can edit your user profile by going to the ``Profile`` page. The only mandatory information is your email address.

.. image:: /images/my-account.png

You can add or modify your name, company information and address and click ``save``.

To add a photo to your profile or modify the existing one: 

	1. Go to the ``My Account`` page.
	2. Click on the ``Profile`` tab.
	3. Click on the round photo icon on the left hand side.
	4. Navigate to the desired image (preferably a .jpeg or .png). 
	5. Click ``Open``.

.. _account-statistics:

Viewing Your Statistics
-----------------------

Your Usage
~~~~~~~~~~

When you log in to the UForge Portal, the first page you will see is the ``Dashboard`` > ``Usage`` sub tab. This view displays your statistics on the platform.

The first part of the page displays your current usage and quota information for appliance templates, software components, machine image generations and scans created.

The ``Appliances`` summary shows the number of appliance templates you currently have in your Appliance Library.  Your quota usage and limit is displayed under the summary information.  If you have reached your quota limit, you can delete existing appliance templates to free up space to create new ones.  This information is not shown if you do not have access to creating and managing appliance templates.

The ``Software Components`` summary is the number of software components (also known as software bundles) you currently have in your Software Library.  Your quota usage and limit is displayed under the summary information.  If you have reached your quota limit, you can delete existing software components to free up space to create new ones.  This information is not shown if you do not have access to creating and managing appliance templates (as these software components are added to appliance templates).  This information is not shown if you do not have access to creating and managing appliance templates.

The ``Generations`` summary is the number of machine images you have currently stored on the platform.  These machine images are generated from appliance templates or scans.  Your quota usage and limit is displayed under the summary information.  The quota information is measured on the number of successful machine images you have requested over a period of time; and not necessarily the number of machine images you currently have listed on your account.  Even if you delete an existing machine image, the quota usage will not be changed.  Your quota usage will be reset if you have a quota that is associated with a frequency (e.g. 5 generations per month).  If you cancel a generation or if there is an error during the generation, the quota value is not updated. 

The ``Scans`` summary displays the current number of successful live machine scans stored on the platform.  Your quota usage and limit is displayed under the summary information.  The quota information is measured on the number of successful scans you hve requested over a period of time.  This number does not necessarily reflect the number of scans you currently have in your account.  If you delete a scan from your account the quota value is not changed.  Your quota usage will be reset if you have a quota that is associated with a frequency (e.g. 5 scans per month).  If you cancel a scan or if there is an error during a scan, the quota usage is not updated.  This information is not shown if you do not have access to migration features.


The rest of the ``Usage`` page provides more detailed activity information including:

	* Your ``Disk Usage``.  This shows the disk space consumed by you for storing software components, machine images and scan data. This includes any software that has been imported.	 If you have reached your quota limit, you can delete software components, machine images or scans to save space.

	* An ``Appliance Activity`` displaying a timeline of the number of appliance templates and machine image generations created.  It also provides a breakdown of operating systems used in the appliances and the types of formats of the generated machine images.

	* A ``Scan Activity`` displaying a timeline of the number scans and machine image generations created.  It also provides a breakdown of operating systems found for each scan and the types of formats of the generated machine images.
	

.. image:: /images/dashboard.png

Generations
~~~~~~~~~~~

The ``Dashboard`` > ``Generations`` view provides you a current list of machine images stored in your account along with any machine images you have published to one or more cloud environments.

.. image:: /images/my-account-generations.png

