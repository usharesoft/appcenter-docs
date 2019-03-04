.. Copyright FUJITSU LIMITED 2016-2019

.. _gallerytemplatestat-object:

galleryTemplateStat
===================

Provides basic statistics of a :ref:`gallerytemplate-object`. This includes the number of times it has been used (imported) by other users

Attributes
~~~~~~~~~~

The list of attributes for ``galleryTemplateStat`` are:

	* ``nbDownloads`` (long): the number of machine image downloads (generated from this shared appliance template)
	* ``nbImports`` (long): the number of imports of this appliance template
	* ``parentUri`` (anyURI): the uri resource of the parent object (e.g. workspace)
	* ``uri`` (anyURI): the uri resource of this object
	* ``user`` (:ref:`user-object`): the login name of the user to track actions made on a :ref:`gallerytemplate-object`
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


