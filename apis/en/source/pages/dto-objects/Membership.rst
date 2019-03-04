.. Copyright FUJITSU LIMITED 2016-2019

.. _membership-object:

membership
==========

Describes the membership status of a user in a :ref:`workspace-object`.

Attributes
~~~~~~~~~~

The list of attributes for ``membership`` are:

	* ``joinedDate`` (dateTime): the date the user accepted the membership invitation
	* ``leftDate`` (dateTime): the date the user has stopped becoming a member or declined the initial membership invitation
	* ``role``: the current role of the user (privileges)
	* ``accepted`` (boolean): a boolean indicating whether the invitation has been accepted
	* ``declined`` (boolean): a boolean indicating whether the invitation has been declined
	* ``msg`` (string): a message included in the invitation
	* ``parentUri`` (anyURI): the uri resource of the parent object this object belongs to
	* ``referrer`` (:ref:`userProfile-object`): the user creating the invitation
	* ``uri`` (anyURI): the uri resource of this object
	* ``user`` (:ref:`userProfile-object`): the user being invited
	* ``userEmail`` (string): the email of the user being invited
	* ``userLogin`` (string): the username of the user being invited
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


