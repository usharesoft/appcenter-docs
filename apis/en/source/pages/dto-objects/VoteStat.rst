.. Copyright FUJITSU LIMITED 2016-2019

.. _votestat-object:

voteStat
========

Provides information on a review rating

Attributes
~~~~~~~~~~

The list of attributes for ``voteStat`` are:

	* ``loginName`` (string): the login name of the user sending the rating
	* ``parentUri`` (anyURI): the uri resource of the parent object this object belongs to
	* ``rating`` (float): the rating value
	* ``uri`` (anyURI): the uri resource of this object
	* ``user`` (:ref:`user-object`): the user information providing the rating (see :ref:`user-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


