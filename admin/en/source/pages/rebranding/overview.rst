.. Copyright 2016 FUJITSU LIMITED

.. _rebrand-considerations:

Rebranding Your UForge GUI
==========================

The following sections cover information regarding rebranding elements of the UForge GUI. Most customizations are done using the config.xml file located in: /var/opt/UShareSoft/uforge-client/gwt/uforge/templates. This is a relative path.
Once you have completed your changes, you will need to run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh

.. note:: Other than the sections indicated in this document, we recommend that you do not modify other elements of the configuration files, otherwise this may cause issues when using UForge Portal.


.. toctree::
   :titlesonly:

   image-directory
   custo-signin
   custo-header
   custo-footer
   custo-user-profile
   restrict-usage
   custo-css
   custo-platform
   custo-troubleshoot
