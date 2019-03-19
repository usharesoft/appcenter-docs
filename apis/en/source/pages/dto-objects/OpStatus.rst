.. Copyright FUJITSU LIMITED 2016-2019

.. _status-object:

status
======

Primitive object to describe the status of the parent object it is attached to. Normally used for asynchronous actions on the platform (e.g. generating machine images, registering machine images, importing/exporting appliance templates).

Attributes
~~~~~~~~~~

The list of attributes for ``status`` are:

	* ``bytesLoaded`` (long): the number of bytes uploaded or downloaded (used for calculating progress)
	* ``bytesTotal`` (long): the total number of bytes expecting to be loaded (used for calculating progress)
	* ``cancelled`` (boolean): a boolean flag to indicate that the job this status was attached to has been cancelled
	* ``complete`` (boolean): a boolean flag to indicate that the job this status was attached has completed
	* ``detailedError`` (boolean): a boolean flag to indicate that there is detailed error message information
	* ``detailedErrorMsg`` (string): the detailed error message
	* ``error`` (boolean): a boolean flag to indicate that an error has occurred in the job this status is attached to
	* ``errorMessage`` (string): the error message
	* ``eta`` (dateTime): the estimated time of when the job will complete
	* ``message`` (string): the current status message
	* ``parentUri`` (anyURI): the uri resource of the parent object this status object is attached to
	* ``percentage`` (int): the current progress as a percentage
	* ``published`` (boolean): a boolean flag used to indicate if the job has finished (for publishing jobs)
	* ``totalTime`` (dateTime): the total time the job has taken to complete
	* ``uri`` (anyURI): the uri resource of this status object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


