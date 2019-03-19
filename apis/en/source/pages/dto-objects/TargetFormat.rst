.. Copyright FUJITSU LIMITED 2016-2019

.. _targetformat-object:

targetFormat
============

Holds information that extends a primitive :ref:`imageformat-object`. This allows administrators to customize and rebrand machine image formats.

Attributes
~~~~~~~~~~

The list of attributes for ``targetFormat`` are:

	* ``name`` (string): the name of this format
	* ``logo`` (:ref:`logo-object`): the logo of this format (see :ref:`logo-object`)
	* ``format`` (:ref:`imageFormat-object`): the primitive format this target platform is based on
	* ``category`` (:ref:`category-object`): the category for this target format
	* ``type``: the target format type
	* ``credAccountType``: the cloud account type this target format is mapped to
	* ``targetPlatformsUri`` (anyURI): the uri resource to retrieve all the target platforms where this target format is used
	* ``targetPlatformsUriList`` (:ref:`UriList-object`): the list of uri resources for the target platform objects where this target format is used
	* ``credInfos`` (string): the end-user information to get the necessary credentials to generate a machine image to this particular TargetFormat
	* ``imageInfos`` (string): the end-user information that could be provided before a user generates a machine image
	* ``publishInfos`` (string): the end-user information that could be provided before a user publishes a machine image
	* ``access`` (boolean): a boolean indicating whether the user has access to the TargetFormat or not
	* ``active`` (boolean): a boolean indicated whether the TargetFormat is availble in the Org the user is registered to
	* ``uri`` (anyURI): the uri resource of this target format object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


