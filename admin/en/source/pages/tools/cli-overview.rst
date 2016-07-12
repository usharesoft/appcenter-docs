.. Copyright 2016 FUJITSU LIMITED

.. _cli-overview:

Using the CLI Tool
------------------

There are two methods to use the command-line tool:

  * interactive mode. In this case, you launch the UForge CLI as follows: uforge -u <user> -p <password> -U  https://uforge.usharesoft.com/api
  * by individual commands, assuming you know the command you want to launch. For example to list user information for root: uforge -u root -p <password> -U https://uforge.usharesoft.com/api user info --account root

Command-line Tool Presentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The UForge AppCenter command-line tool has the form:

Usage: uforge <target> <command> [options][args]

Where <target> is one of the following::

  entitlement           Administration of all the entitlements in UForge for
                        RBAC
  images                Administer generated images for a user
  org                   Organization administration
                        (list/info/create/update/delete etc)
  os                    Administer operating systems/distributions (list/info
                        etc)
  pimages               Administer published images for a user
  role                  Manage platform roles
  subscription          Manage subscription profiles : list profile, create
                        profiles, update profiles
  template              Administer templates for a user
                        (list/info/create/delete/generate/share etc)
  user                  User's administration (list/info/create/update/delete
                        etc)

  optional arguments:
    -U URL, --url URL     the server URL endpoint to use
    -u USER, --user USER  the user name used to authenticate to the server
    -p PASSWORD, --password PASSWORD
                          the password used to authenticate to the server
    -v                    displays the current version of the uforge-cli tool
    -h, --help            show this help message and exit
    -k PUBLICKEY, --publickey PUBLICKEY
                          public API key to use for this request. Default: no
                          default
    -s SECRETKEY, --secretkey SECRETKEY
                          secret API key to use for this request. Default: no
                          default
    -c, --no-check-certificate
                          Don't check the server certificate against the
                          available certificate authorities
