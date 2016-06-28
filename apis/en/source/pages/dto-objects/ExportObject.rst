.. Copyright 2016 FUJITSU LIMITED

.. _exportobject-object:

exportObject
============

Holds the meta-data information when exporting an appliance template.

Attributes
~~~~~~~~~~

The list of attributes for ``exportObject`` are:

	* ``downloadKey`` (string): the unique id to be used when someone wishes to download the export archive without authentication information (the key can only be used once)
	* ``downloadUri`` (anyURI): the uri resource to download the exported archive of an appliance template
	* ``parentUri`` (anyURI): the uri resource of the parent object this object is attached to
	* ``status`` (:ref:`status-object`): the current status of the export job
	* ``type``: the format used to describe the meta-data of an exported appliance template
	* ``uri`` (anyURI): the uri resource of this export object
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


