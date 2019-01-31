.. Copyright FUJITSU LIMITED 2016-2019

.. _scanimport-object:

scanImport
==========

Holds the information of the transformation process from a scan report to an appliance template or a golden image.

Attributes
~~~~~~~~~~

The list of attributes for ``scanImport`` are:

	* ``importedObjectName`` (string): the name of the imported appliance or golden. This name won't be updated even if the name of the imported object gets changed
	* ``importedObjectUri`` (anyURI): the URI of the imported appliance or golden. This URI could be deprecated in case the imported object is deleted.
	* ``importedObjectVersion`` (string): the version of the imported appliance or golden. This version won't be updated even if the version of the imported object gets changed
	* ``importedObjectDescription`` (string): the description of the imported golden only. This description won't be updated even if the description of the imported golden gets changed
	* ``orgUri`` (anyURI): the uri of the Organization where the scan has been imported
	* ``parentUri`` (anyURI): the parent uri of the scan import
	* ``status`` (:ref:`status-object`): the status of the import
	* ``uri`` (anyURI): the uri of the scan import
	* ``importedToGolden`` (boolean): a boolean indicating if the imported object is a golden image. If set to false the imported object is an appliance template
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


