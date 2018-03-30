.. Copyright 2017 FUJITSU LIMITED

.. _uforge-downgrade:

Going Back to a Previous Version of a UForge Deployment
-------------------------------------------------------

.. note:: Using ``yum downgrade`` to return to a previous version of UForge is not supported.

Even though the ``yum downgrade`` command works from a packaging perspective, it will not roll back possible changes done to the database (especially the database schema).

Moreover, there are additional factors that may lead to fatal errors, including configuration or properties files which are not considered by ``yum downgrade``, or possible changes of users and their permissions on the file system.

If you need to downgrade a UForge deployment to a previous version, you should create a snapshot of your machine prior to the upgrade.
