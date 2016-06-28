.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _scanimport-object:

scanImport
==========

Holds the information of the transformation process from a scan report to an appliance template.

Attributes
~~~~~~~~~~

The list of attributes for ``scanImport`` are:

	* ``applianceName`` (string): the name of the imported appliance. This name won't be updated even if the name of the appliance gets changed
	* ``applianceUri`` (anyURI): the URI of the imported appliance. This URI could be deprecated in case the template is deleted.
	* ``applianceVersion`` (string): the version of the imported appliance. This version won't be updated even if the version of the appliance gets changed
	* ``orgUri`` (anyURI): the uri of the Organization where the scan has been imported
	* ``parentUri`` (anyURI): the parent uri of the scan import
	* ``status`` (:ref:`status-object`): the status of the import
	* ``uri`` (anyURI): the uri of the scan import
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


