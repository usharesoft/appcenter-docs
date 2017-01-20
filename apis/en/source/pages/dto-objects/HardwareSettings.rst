.. Copyright 2017 FUJITSU LIMITED

.. _hardwaresettings-object:

hardwareSettings
================

Provides recommended H/W settings when provisioning an instance from a machine image.

Attributes
~~~~~~~~~~

The list of attributes for ``hardwareSettings`` are:

	* ``cores`` (int): the recommended number of cores
	* ``cpus`` (int): the recommended number of CPUs
	* ``memory`` (int): the recommended memory size
	* ``parentUri`` (anyURI): the uri resource of the parent object
	* ``storagePerformance``: the storage performance rating
	* ``uri`` (anyURI): the uri resource of this hardware setting object
	* ``vcpus`` (int): the recommended number of vCPUs
	* ``created`` (dateTime): the created date of the object
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


