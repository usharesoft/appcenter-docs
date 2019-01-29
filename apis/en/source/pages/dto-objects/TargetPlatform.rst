.. Copyright FUJITSU LIMITED 2016-2019

.. _targetplatform-object:

targetPlatform
==============

Holds information on a target cloud platform that extends one of the primitive cloud environments supported by the platform. This allows administrators to customize target cloud environments. A target platform may include one or more :ref:`targetformat-object` objects.

Attributes
~~~~~~~~~~

The list of attributes for ``targetPlatform`` are:

	* ``name`` (string): the name of this target platform
	* ``logo`` (:ref:`logo-object`): the logo of this target platform (see :ref:`logo-object`)
	* ``type``: the primitive type for this target platform
	* ``targetFormatsUri`` (anyURI): the uri resource to retrieve the target formats this target platform contains
	* ``targetFormatsUriList`` (:ref:`UriList-object`): the list of uri resources for each target format this target platform contains
	* ``accountInfos`` (string): the end-user information that could be displayed to help the user get the necessary credentials information (cloud platform api keys, etc.)
	* ``access`` (boolean): a boolean indicating whether the user has access to the TargetFormat or not
	* ``active`` (boolean): a boolean indicated whether the TargetFormat is availble in the Org the user is registered to
	* ``uri`` (anyURI): the uri resource for this target platform object
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


