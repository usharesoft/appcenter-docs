.. Copyright FUJITSU LIMITED 2016-2019

.. _applianceexport-object:

applianceExport
===============

Holds tracking information on requests to export an appliance. An export basically archives the appliance meta-data and all relevant software and allows the user to download that archive. The archive information can then be version controlled or imported to another UForge platform.

The appliance export is an asynchronous job which may take some time. The current status of the export is stored in this object.

Attributes
~~~~~~~~~~

The list of attributes for ``applianceExport`` are:

	* ``applianceName`` (string): the name of the exported appliance
	* ``applianceVersion`` (string): the version of the exported appliance
	* ``downloadUri`` (anyURI): the uri allowing the archive to be downloaded
	* ``downloaded`` (boolean): flag to determine if there has been at least one request to download the export archive
	* ``parentUri`` (anyURI): the uri of the exported appliance
	* ``status`` (:ref:`status-object`): the :ref:`status-object` object providing the current status of the export
	* ``uri`` (anyURI): the uri resource of this appliance export
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


