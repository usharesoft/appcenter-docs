.. Copyright 2018 FUJITSU LIMITED

.. _containertemplate-object:

containerTemplate
=================

Holds all the meta-data of a containerTemplate.

Attributes
~~~~~~~~~~

The list of attributes for ``containerTemplate`` are:

	* ``uri`` (anyURI): the uri of this container template
	* ``softwareBundle`` (:ref:`softwareBundle-object`): the software bundle from which the container template has been created
	* ``distribution`` (:ref:`distribution-object`): the distribution on which the container template is based
	* ``images``: the list of images generated from the container template
	* ``imagesUri`` (anyURI): the uri to retrieve images generated from the container template
	* ``formatsUri`` (anyURI): the uri resource to retrieve all the target formats compatible with this container template
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


