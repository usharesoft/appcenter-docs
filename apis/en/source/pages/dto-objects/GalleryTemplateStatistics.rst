.. Copyright FUJITSU LIMITED 2016-2019

.. _gallerytemplatestatistics-object:

galleryTemplateStatistics
=========================

Provides all the statistical information of a :ref:`gallerytemplate-object`. This includes basic statistics (see :ref:`gallerytemplatestat-object`, as well as rating information.

Attributes
~~~~~~~~~~

The list of attributes for ``galleryTemplateStatistics`` are:

	* ``clonedStats``: a list of :ref:`gallerytemplatestat-object` objects holding the statistics describing the number of times an appliance template has been cloned
	* ``clonedStatsUri`` (anyURI): the uri resource to get all import statistics for an appliance template
	* ``clones``: a list of :ref:`statdatapoint-object` providing the history of imports
	* ``downloads``: a list of :ref:`statdatapoint-object` providing the history of download statistics
	* ``hasRating`` (boolean): a boolean flag to determine if the appliance template has been rated
	* ``nbDownloads`` (long): the total number of downloads of machine images related to the appliance template
	* ``nbImports`` (long): the total number of imports for this appliance template
	* ``nbVotes`` (long): the total number of times this appliance template has been rated
	* ``overallRating`` (float): the overall rating of this appliance template
	* ``parentUri`` (anyURI): the uri resource of the parent appliance template
	* ``truncatedDate`` (string): the date of the data point
	* ``uri`` (anyURI): the uri resource of this object
	* ``voteStats``: a list of :ref:`votestat-object` providing the all the ratings by users
	* ``voteStatsUri`` (anyURI): the uri resource to retrieve all the ratings by users for this appliance template
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


