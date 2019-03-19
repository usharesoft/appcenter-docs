.. Copyright FUJITSU LIMITED 2016-2019

.. _workspace-object:

workspace
=========

Describes a workspace used to share appliance templates between users.

Attributes
~~~~~~~~~~

The list of attributes for ``workspace`` are:

	* ``commentsUri`` (anyURI): the uri resource of the comments posted to this workspace
	* ``membershipsUri`` (anyURI): the uri resource to retrieve the members of this workspace
	* ``myMembership`` (:ref:`membership-object`): the membership information on the user sending the request
	* ``name`` (string): the name of the workspace
	* ``nbTemplates`` (long): the number of shared appliance templates in the workspace
	* ``orgUri`` (anyURI): the uri resource of the organization where this workspace is created
	* ``templatesUri`` (anyURI): the uri resource to retrieve all the shared appliance templates
	* ``uri`` (anyURI): the uri resource of this workspace
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


