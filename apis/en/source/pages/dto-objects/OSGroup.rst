.. Copyright FUJITSU LIMITED 2016-2019

.. _osgroup-object:

osGroup
=======

Description of an operating system group for filesystem directory and file permissions. See also :ref:`osuser-object`.

Attributes
~~~~~~~~~~

The list of attributes for ``osGroup`` are:

	* ``groupId`` (string): the unique id of the group (only used if ``groupIdAuto == false``
	* ``groupIdAuto`` (boolean): boolean flag to determine if the group id should be calculated
	* ``name`` (string): the group name
	* ``sudo`` (int): a flag to configure sudoers parameters (0 : no sudo, 1: sudo, 2: sudo without password)
	* ``systemGroup`` (boolean): flag to determine if this is a system group
	* ``uri`` (anyURI): the uri resource of this group object
	* ``password`` (string): the group password
	* ``encrypted`` (boolean): boolean flag to determine if the group password string is encrypted
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


