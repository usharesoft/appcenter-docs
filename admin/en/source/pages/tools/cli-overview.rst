.. Copyright 2016-2019 FUJITSU LIMITED

.. _cli-overview:

Using the CLI Tool
------------------

The UForge platform has a command-line tool called ``uforge`` to administer the platform.  The CLI has the following usage:

.. code-block:: shell

  uforge -u <name> -p <password> -U <URL> <target> <command> [options][args]

where the flags:
  
    * ``-u``: provides the username of the administrator
    * ``-p``: provides the password of the administrator
    * ``-U``: provides the UForge URL endpoint to communicate with the platform

If the ``target``, ``command`` and arguments are ommitted, then you enter into an interactive mode e.g.:

.. code-block:: shell

  $ uforge -u <user> -p <password> -U https://uforge.usharesoft.com/api
  
The following targets are available for the ``uforge`` command-line tool:


    * ``entitlement`` : Administration of all the entitlements in UForge for RBAC
    * ``images`` : Administer generated images for a user 
    * ``org`` : Organization administration (list/info/create/update/delete etc)
    * ``os`` : Administer operating systems/distributions (list/info etc)
    * ``pimages`` : Administer published images for a user
    * ``role`` : Manage platform roles
    * ``subscription`` : Manage subscription profiles : list profile, create profiles, update profiles
    * ``template`` : Administer templates for a user (list/info/create/delete/generate/share etc)
    * ``user`` : User's administration (list/info/create/update/delete etc)

To list the command for each target, use the ``-h`` or ``--help`` option.  For example:

.. code-block:: shell

  $ uforge -u root -p mypassword -U https://uforge.usharesoft.com/api user --help

The arguments are:

  * ``-U URL``, ``--url URL`` : the server URL endpoint to use
  * ``-u USER``, ``--user USER`` :  the user name used to authenticate to the server
  * ``-p PASSWORD``, ``--password PASSWORD`` : the password used to authenticate to the server
  * ``-v`` : displays the current version of the uforge-cli tool
  * ``-h``, ``--help`` : show this help message and exit
  * ``-k PUBLICKEY``, ``--publickey PUBLICKEY`` : public API key to use for this request. Default: no default
  * ``-s SECRETKEY``, ``--secretkey SECRETKEY`` : secret API key to use for this request. Default: no default
  * ``-c``, ``--no-check-certificate`` : Don't check the server certificate against the available certificate authorities
