.. Copyright 2016 FUJITSU LIMITED

.. _populate-project-catalog:

Populate Project Catalog (Optional)
-----------------------------------

UForge provides a project catalog of commonly used software that is used when constructing server templates. When a new operating system is added to UForge, there are no software components registered to the operating system in the Project Catalog. UForge bundles in a set of open source software components.  If you want to associate these software components to the operating system for the project catalog, then run the following command::

# ARCHS=i386 DEBUG=y COS_VERS=5.5 /opt/UShareSoft/uforge/bin/exec_uploads.sh -w Projects -p <uforge port> -U $ADMIN -P $PASS /tmp/DISTROS/USS/projects/CATALOG-USS

Provide User Access to Operating System
---------------------------------------

By default, when adding a new operating system, it is not available for all users. You must explicitly provide access to the users who can access this resource.
Login to one of the UForge instances and run::

 uforge user os enable --name CentOS --version 5.5 --arch i386 --account <username> --url <uforge url> -u $ADMIN -p $PASS

Windows Key Mechanism
---------------------

Windows Operating System requires a key validation. UForge generates images without a key in it. Users have 30 days to enter their key once the Appliance is booted.
