.. Copyright FUJITSU LIMITED 2016-2019

.. _statticket-object:

statTicket
==========

Generic object hodling reference to most of the platform CRUD (create / update / delete) operations. StatTicket remains even if the initial attach object gets deleted / updated.

Attributes
~~~~~~~~~~

The list of attributes for ``statTicket`` are:

	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


