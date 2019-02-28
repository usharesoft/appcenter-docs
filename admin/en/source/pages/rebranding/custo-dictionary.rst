.. Copyright 2019 FUJITSU LIMITED

.. _custo-dictionary:

Customizing the Portal Text
============================

You can customize the text that appears on the left hand menu of the Portal. 

.. note:: At this time, the text on the left hand menu is the only text that can be customized.

You can modify the text using the ``dictionary.js`` file located in: ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates/js/directory``.

You should note the following syntax rules:

	* escape " and \ character
	* use {#} syntax for parameters, follow original constant order, starting at 0
	* For plural syntax suround the parameter by [ and ] at the end of the key, default form (without parameter) is mandatory:

    	- none: the count is 0
    	- one: the count is 1
    	- two: the count is 2
    	- few: the last two digits are from 03-10
    	- many the last two digits are from 11-99
    
    The default form is used for everything else (for example 101, 202, etc.)

.. note:: Javascripts are not supported within the ``dictionary.js`` file.

To apply the changes you made, run the following command. This will stop Tomcat, integrate the changes and restart Tomcat::

	$ /opt/UShareSoft/uforge-client/bin/uforge_ui_update.sh
