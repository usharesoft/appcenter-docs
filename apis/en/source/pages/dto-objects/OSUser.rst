.. Copyright FUJITSU LIMITED 2016-2019

.. _osuser-object:

osUser
======

Description of an operating system user for filesystem directory and file permissions. OS users can be grouped together using :ref:`osgroup-object` objects.

Attributes
~~~~~~~~~~

The list of attributes for ``osUser`` are:

	* ``disablePasswordLogin`` (boolean): boolean to disable the user logging into the system using a password
	* ``encrypted`` (boolean): boolean indicating that the password string is encrypted
	* ``fullName`` (string): the full name of the user
	* ``homeDir`` (string): the home directory of the user
	* ``name`` (string): the user name
	* ``password`` (string): the user password
	* ``passwordAuto`` (boolean): a boolean indicating for the platform to automatically set the password listed in the attribute password
	* ``primaryGroup`` (string): the user's primary group (see :ref:`osgroup-object`)
	* ``primaryGroupAuto`` (boolean): boolean indicating for the platform to automatically assign the user's primary group
	* ``secondaryGroups`` (string): a list of the user's secondary groups (each group separated by a comma)
	* ``shell`` (string): the shell type for the user
	* ``sshKeys``: a list of public SSH keys for the user (see :ref:`sshkey-object`)
	* ``sudo`` (int): a flag to configure sudoers parameters (0 : no sudo, 1: sudo, 2: sudo without password)
	* ``systemUser`` (boolean): a boolean indicating that this is a system user
	* ``uri`` (anyURI): the uri resource of this user object
	* ``userId`` (string): the unique id of this user (only used if ``userIdAuto == false``
	* ``userIdAuto`` (boolean): boolean indicating whether the platform should automatically calculate the user's id
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


