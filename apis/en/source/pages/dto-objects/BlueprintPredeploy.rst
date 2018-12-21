.. Copyright 2018 FUJITSU LIMITED

.. _blueprintpredeploy-object:

blueprintPredeploy
==================

Provides the information required to know the status of the appliances related to a blueprint.

Attributes
~~~~~~~~~~

The list of attributes for ``blueprintPredeploy`` are:

	* ``readyAppliances``: the list of appliances that are ready
	* ``publicationOngoingAppliances``: the list of appliances having a publication ongoing
	* ``nonPublishedAppliances``: the list of appliances that are not published
	* ``generatedImagesUris``: the list of image uris for images that are generated but not published
	* ``nonGeneratedAppliances``: the list of appliances that are not generated
	* ``generationOngoingAppliances``: the list of appliances having an image generation ongoing
	* ``interactiveProfileAppliances``: the list of appliances having an interactive profile


