.. Copyright FUJITSU LIMITED 2016-2019

.. _imagepkg-object:

imagePkg
========

Provides the details of a group of files (package) that are to be installed as part of a machine image. This may includes packages that have not been explicitly set in an appliance template, rather added as part of the generation process to adhere to package dependencies.

Attributes
~~~~~~~~~~

The list of attributes for ``imagePkg`` are:

	* ``level`` (int): provides the dependency level of this package. For example if this package was added as a dependency of another package, then this will be level 1
	* ``native_from_distribution`` (boolean): a boolean determining if this package has come from a registered repository
	* ``pkg`` (:ref:`package-object`): the :ref:`package-object` details


