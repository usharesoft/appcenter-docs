.. Copyright FUJITSU LIMITED 2016-2019

.. _category-object:

category
========

Holds the information of one category available on the platform. Categories are used to classify appliance templates into groups. A category may have child categories, allowing an administrator to create more complicated taxonomy

Attributes
~~~~~~~~~~

The list of attributes for ``category`` are:

	* ``name`` (string): the category name (displayed name)
	* ``orgUri`` (anyURI): the uri resource of the organization this category is registered to
	* ``subCategories``: the list of sub categories (list of :ref:`category-object` objects)
	* ``subCategoryUri`` (anyURI): the uri resource to get all the sub-categories
	* ``uri`` (anyURI): the uri of this category
	* ``type``: the category type
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


