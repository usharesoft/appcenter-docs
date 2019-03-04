.. Copyright FUJITSU LIMITED 2016-2019

.. _appliance-object:

appliance
=========

Holds all the meta-data information of a software stack (known as an appliance template). It consists of five layers, namely:

- an Install Profile - specific information for the first time the image boots

- an OS Profile - a list of operating system packages. Each operating system within the organization provides one or more standard OS profiles to choose from when creating the OS Profile of the appliance template. It is also possible to create custom OS profiles

- Projects - a list of Project software components chosen from the Organization´s Project Catalog

- My Software - a list of software components chosen from the User´s private “Software Library”

- Configuration - configuration information including boot scripts and/or other software components to manage the image after provisioning

Appliance templates are then used to generate ``machine images``.

Attributes
~~~~~~~~~~

The list of attributes for ``appliance`` are:

	* ``uuid`` (string): the uuid of the object
	* ``applianceExports``: a list of :ref:`applianceexport-object` objects holding meta-data information for each time the appliance has been exported.
	* ``archName`` (string): the operating system architecture this appliance is based on
	* ``baseCloneUri`` (anyURI): uri resource used to clone this appliance
	* ``baseImagesStatusUri`` (anyURI): uri resource to retrieve machine images status
	* ``baseImagesUri`` (anyURI): uri resource to retrieve machine images generated from this appliance
	* ``baseMySoftwareUri`` (anyURI): uri resource to retrieve the software components added to this appliance
	* ``baseOasPackageUri`` (anyURI): uri resource to retrieve any ``UForge Studio`` package added to this appliance
	* ``baseOsProfileUri`` (anyURI): uri resource to retrieve the ``OS Profile`` for this appliance
	* ``baseProjectsUri`` (anyURI): uri resource to retrieve any projects added to this appliance
	* ``basePublishImagesStatusUri`` (anyURI): uri resource to retrieve published machine image status
	* ``basePublishImagesUri`` (anyURI): uri resource to retrieve published machine images from this appliance
	* ``baseTemplatesStatusUri`` (anyURI): uri resource to retrieve the status for each time this appliance has been shared (to workspaces)
	* ``baseTemplatesUri`` (anyURI): uri resource to retrieve all the shared templates (to workspaces)
	* ``bootScripts``: a list of :ref:`bootscript-object` objects added to this appliance
	* ``bootScriptsUri`` (anyURI): uri resource to get the boot scripts added to this appliance
	* ``bootScriptUris`` (:ref:`UriList-object`): a list of uris for the boots scripts added to this appliance
	* ``description`` (string): a description of the appliance
	* ``distributionName`` (string): the operating system this appliance is based on (includes name and version)
	* ``distributionUri`` (anyURI): uri resource to get the details of the operating system this appliance is based on
	* ``exportsUri`` (anyURI): uri resource to get all the export objects for this appliance
	* ``imageUris`` (:ref:`UriList-object`): a list of uris for the machine images generated from this appliance
	* ``imported`` (boolean): boolean to determine if this appliance is an import (e.g. from a ``scan``)
	* ``installedSize`` (long): estimated disk size required to install the appliance's software
	* ``installProfile`` (:ref:`installProfile-object`): the :ref:`installprofile-object` object for this appliance
	* ``installProfileUri`` (anyURI): uri resource to get the ``install profile`` of the appliance
	* ``lastPkgUpdate`` (dateTime): the ``os profile`` packages update date (this date is used to calculate if any new package updates are available
	* ``logo`` (:ref:`logo-object`): the :ref:`logo-object` object for the appliance
	* ``mySoftwareList``: a list of :ref:`mysoftware-object` objects describing the software components added to this appliance
	* ``mySoftwareUris`` (:ref:`UriList-object`): a list of uris for the software components added to this appliance
	* ``name`` (string): the name of this appliance
	* ``nbSecurityUpdates`` (int): the number of security operating system packages available for update
	* ``nbUpdates`` (int): the number of native package updates available for update
	* ``orgUri`` (anyURI): the uri resource of the organization this appliance belongs to
	* ``osProfile`` (:ref:`distribProfile-object`): the :ref:`distribprofile-object` object describing the operating system profile of this appliance
	* ``osProfileUri`` (anyURI): the uri resource for the operating system profile of this appliance
	* ``parentApplianceUri`` (anyURI): the uri resource of the parent appliance. This is set if this appliance is a clone of another appliance
	* ``parentTemplateUri`` (anyURI): the uri resource of an parent appliance template. This is set of this appliance is a result of importing an appliance (e.g. from a workspace)
	* ``projects``: a list of :ref:`project-object` objects added to this appliance
	* ``projectUris`` (:ref:`UriList-object`): a list of uris for the projects added to this appliance
	* ``publishImages``: a list of :ref:`publishimage-object` objects for the machine images that have been registered to one or more cloud platforms
	* ``publishImageUris`` (:ref:`UriList-object`): a list of uris for the machine images that have been registered to one or more cloud platforms
	* ``revision`` (int): the revision number of this appliance
	* ``shared`` (boolean): a boolean highlighting this appliance has been shared to at least one workspace
	* ``size`` (long): the size (in bytes) of all the packages and software added to this appliance
	* ``tag`` (string): a tag for this appliance
	* ``uri`` (anyURI): the uri resource of this appliance
	* ``version`` (string): the version of this appliance
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


