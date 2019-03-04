.. Copyright FUJITSU LIMITED 2016-2019

.. _installprofile-object:

installProfile
==============

Describes the installation profile of an appliance template. The installation profile holds configuration information that should be applied as part of the installation of an operating system. This includes partitioning table layout, root password information, kernel parameters, keyboard settings, timezone etc.

Attributes
~~~~~~~~~~

The list of attributes for ``installProfile`` are:

	* ``activationKey`` (string): the activation key of the Windows operating system
	* ``applianceUri`` (anyURI): the uri resource of the appliance template this install profile belongs to
	* ``diskSize`` (long): the disk size (in bytes). .. note:: this is only used for ``basic partitioning`` with one disk
	* ``firewallAuto`` (boolean): boolean to determine whether the firewall settings are automatically set, if false this question is asked to the user interactively when provisioning an instance
	* ``firewallEnabled`` (boolean): boolean to determine if the firewall is enabled (only used if ``firewallAuto = true``)
	* ``groups``: the list of operating system groups (see :ref:`osgroup-object`
	* ``groupsUri`` (anyURI): the uri resource to retrieve all the operating system groups
	* ``hwType`` (string): the recommended hardware type (used for VMware type machine images)
	* ``internetSettingsAuto`` (boolean): boolean to determine whether the internet settings are automatically set, if false this question is asked to the user interactively when provisioning an instance
	* ``kernelParameters`` (string): the list of kernel parameters to use (this is one string with each kernel parameter separated by a comma
	* ``keyboard``: the keyboard setting (only used if ``keyboardAuto = true``)
	* ``keyboardAuto`` (boolean): boolean to determine whether the keyboard settings are automatically set, if false this question is asked to the user interactively when provisioning an instance
	* ``memorySize`` (long): the recommended memory size to use for running an instance
	* ``nics``: the list of NICs to configure (see :ref:`nic-object`)
	* ``nicsUri`` (anyURI): the uri resource to get the list of NIC information
	* ``partitionAuto`` (boolean): boolean to determine whether to automatically create the partitioning table, if false this question is asked to the user interactively when provisioning an instance
	* ``partitionTable`` (:ref:`partitionTable-object`): the partition table information (see :ref:`partitiontable-object`). Only used if ``partitionAuto = true``
	* ``rootUser`` (:ref:`osUser-object`): the root user information, includes root password information
	* ``runSysprep`` (boolean): boolean to determine if sysprep will be executed for Windows operating system
	* ``skipLicenses`` (boolean): a boolean to determine whether to display and enforce the user to accept licensing information during the provisioning of an instance. if ``true`` no licensing information is displayed
	* ``swapSize`` (long): the swap size (in bytes). .. note:: this is only used for ``basic partitioning`` with one disk
	* ``timezone`` (string): the timezone to set. Only used if ``timezoneAuto == true``
	* ``timezoneAuto`` (boolean): boolean to determine whether the timezone settings are automatically set, if false this question is asked to the user interactively when provisioning an instance
	* ``timezoneCity`` (string): the city name of the timezone that is set (only considered if ``timezoneAuto == true``
	* ``updateTools`` (boolean): boolean to determine whether to allow automatic update of AWS libraries and tools in the cloud environment. .. note:: only used for AWS
	* ``uri`` (anyURI): the uri resource of this install profile
	* ``users``: the list of operating system users to set (see :ref:`osuser-object`)
	* ``usersUri`` (anyURI): the uri resource to retrieve all the operating system users
	* ``vagrantUser`` (string): the user to set for vagrant base boxes
	* ``welcomeMsg`` (string): welcome message to display to the end user when provisioning an instance
	* ``seLinuxMode`` (seLinuxMode): the SELinux mode (disabled/permissive/enforcing)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


