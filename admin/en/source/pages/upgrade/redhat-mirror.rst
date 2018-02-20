.. Copyright 2017 FUJITSU LIMITED

.. _redhat-mirror:

Creating a Local Mirror for Red Hat Without Using a Satellite Server
--------------------------------------------------------------------

You can create a local mirror of the latest updates for Red Hat Enterprise Linux without using a satellite server. How this is set up will depend on your version of Red Hat Enterprise Linux.

You can also refer to the Red Hat Knowledgebase solutions:
	* `Migrating from RHN to RHSM in Red Hat Enterprise Linux <https://access.redhat.com/solutions/129723>`_.
	* `How to register and subscribe a system to the Red Hat Customer Portal using Red Hat Subscription-Manager <https://access.redhat.com/solutions/253273>`_.

Red Hat 5 and 6
~~~~~~~~~~~~~~~

1. Install Red Hat Enterprise Linux 5.0 or 6.0.

2. Register the RH system running and register the system::

	rhn_register command

3. Migrate your subscription tool, RHN to RHSM, execute the following two commands:

.. code-block:: shell

	yum install subscription-manager-migration subscription-manager-migration-data
	rhn-migrate-classic-to-rhsm

4. Install your web server::

	yum install httpd
 
5. Create ``/var/www/html/RHEL/6/X86_64/``.
6. Open port ``80``.

7. Create a local mirror following the procedure described on the `Red Hat Knowledgebase <https://access.redhat.com/solutions/23016>`_.

8. Add RedHat Enterprise Linux to your AppCenter. For detailed instructions, refer to :ref:`populate-rhel`.

Red Hat 7
~~~~~~~~~

1. Install Red Hat Enterprise Linux 7.0 as any other installation.

2. Register and subscribe your system to the Red Hat Customer Portal using Red Hat Subscription-Manager. Run the subscription manager with the RH Custom credential::

    subscription-manager register –username –password –auto-attach

3. Install your web server::

	yum install httpd

4. Create ``/var/www/html/RHEL/6/X86_64/``.

5. Open port ``80``.

6. Create a local mirror following the procedure described on the `Red Hat Knowledgebase <https://access.redhat.com/solutions/23016>`_.

7. Add RedHat Enterprise Linux to your AppCenter. For detailed instructions, refer to :ref:`populate-rhel`.
