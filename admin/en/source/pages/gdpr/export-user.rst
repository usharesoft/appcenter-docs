.. Copyright 2019 FUJITSU LIMITED

.. _export-user:

Exporting User Data for Portability
-----------------------------------

For data portability, users can request a copy of their personal data for their own purposes across different services. The following sections describe all the necessary API calls to collect all information linked to a specific User, such as Appliances, MySoftware and User Credentials. Once all data is gathered, this has to be packed in a zip or tar file. 


Exporting Appliances
~~~~~~~~~~~~~~~~~~~~

Use ``appliance_export`` to export the specified appliance as an archive file. This creates an export ticket that contains an archive file that can be downloaded. The archive file contains the meta-data of the appliance and any 3rd party software or configuration scripts associated with the appliance.
 
The appliance export is an asynchronous job which may take some time. The response body is an export appliance ticket. To poll the status of this export use ``applianceExportStatus_get``. Once complete, the archive file can be downloaded using ``applianceExport_download``.


Dowloading an Appliance Export Archive
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use ``applianceExport_download`` to download the archive of an exported appliance. The archive file is a .tar.gz file. The archive contains the meta-data file of the appliance and any 3rd party software or configuration scripts associated with the appliance.

.. note:: You can only download an archive file once the creation of the archive file is complete. Use ``applianceExportStatus_get`` to check the status of an export prior to sending a download request.


Exporting My Software
~~~~~~~~~~~~~~~~~~~~~

Use ``mySoftware_export`` to export the specified software bundle as a compressed archive file. This creates an export ticket that contains an archive that can be downloaded. The archive file contains the meta-data of the mySoftware.

The response body is an export software bundle ticket. To check the status of this export, use ``mySoftwareExportStatus_get``. Once complete, the archive can be downloaded using ``mySoftwareExport_download``.

Downloading a My Software Archive
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use ``mySoftwareExport_download`` to download the archive file of an exported software bundle. The archive contains the meta-data file of the mySoftware.

.. note:: You can only download an archive file once the creation of the archive file is complete. Use ``mySoftwareExportStatus_get`` to check the status of an export prior to a download request.


Exporting User Cloud Credentials
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use ``cloudAccount_getAll`` to retriever all the cloud accounts for a user. A list of credAccount objects are returned.

	