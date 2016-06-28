.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _install-live-system:

Installing on an Existing Operating System
------------------------------------------

///Note : This section is a beta-draft for 3.6

If you are unable to import or register an ISO image or VM image to your infrastructure, then it is possible to install UForge AppCenter manually on top of an existing running system.  UShareSoft offers official RPM package repositories for the following operating systems:

	* Red Hat Enterprise Linux 6
	* CentOS 6

These packages can be installed via yum package command-line tool.

Setting Up Official Repository
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To install the UForge AppCenter packages, the official repository must be registered.  These repositories have restricted access, requiring an access id and key.  Please contact your vendor if you do not have this ID and key.  

To register a new repository, create a file in /etc/yum.repos.d/ directory with the following information:

.. code-block:: shell

	# vi /etc/yum.repos.d/uforge-ee-centos.repo
	[UShareSoft-UForge-AppCenter]
	name=UShareSoft UForge AppCenter
	baseurl=https://your-id:your-license-key@repository.usharesoft.com/uforge-ee/uforge/centos/releases/6/x86_64/UFIAB/3.6/
	enabled=1
	gpgcheck=0

/// This location has not been defined yet – check with PS

Installing the Packages
~~~~~~~~~~~~~~~~~~~~~~~

To ensure that there are no package dependency conflicts, you must remove any existing database libraries and Java libraries that may already be installed on the system. Prior to installing the UForge AppCenter packages, run the following commands:

.. code-block:: shell

	# yum erase -y mysql-libs
	# yum erase -y java-*

Now install the packages, by running the commands:

.. code-block:: shell

	# yum install -y uss-mysql-libs
	# yum install -y uforge uforge-* uss-* perl-DBD-MySQL perl-IO-Compress perl-Net-SSLeay syncope GlassFish MySQL-server MySQL-client MySQL-shared oar-server oar-node oar-user oar-user-mysql ntpdate ntp postfix apt apt-utils fakeroot kernel kernel-headers kernel-devel kernel-firmware ec2-api-tools ec2-ami-tools euca2ools redhat-lsb redhat-lsb-compat redhat-lsb-graphics redhat-lsb-printing sysstat php-zts

/// TODO: This command is for 3.5 (includes glassfish!)

.. code-block:: shell

	# cd /root/
	# wget -c https://ussrelease:uss-release%2F2013@repository.usharesoft.com/uforge-ee/uforge/centos/releases/6/x86_64/UFIAB/3.5/uforge-deploy-standard-3.5.1-1.tar.gz
	# tar -xzf /root/uforge-deploy-standard-3.5.1-1.tar.gz -C /

// THIS IS FOR 3.5, will require to change this for 3.6

Configuring UForge AppCenter Services Pre-Requisites
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

UForge AppCenter provides an automatic deployment wizard to help you setup and configure the various services.  To use this wizard, the following pre-requisite steps must be carried out:

	* Setup the port numbers required by UForge by updating iptables configuration file.

..note:: These rules allow all source IP addresses to connect via these port numbers.  A stricter set of firewall rules may be required for production systems.

.. code-block:: shell

	# vi /etc/sysconfig/iptables
	# UForge AppCenter Firewall rules for Installation
	*filter
	:INPUT ACCEPT [0:0]
	:FORWARD ACCEPT [0:0]
	:OUTPUT ACCEPT [249861:14327855]
	-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
	-A INPUT -p icmp -j ACCEPT
	-A INPUT -i lo -j ACCEPT

	# Open SSH for management
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 22 -j ACCEPT

	# Port for deployment
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 9998 -j ACCEPT

	### Ports for UForge Services ###
	# Ports for UForge Web Service Proxy (on Apache)
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 80 -j ACCEPT
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 443 -j ACCEPT

	# Port for UForge REST Web Services (on Apache Tomcat)
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 8080 -j ACCEPT

	# Port for UForge Compute Grid
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 6667 -j ACCEPT

	# TO CHECK WITH CLEMENT
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 111 -j ACCEPT
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 10002 -j ACCEPT
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 20000 -j ACCEPT
	-A INPUT -p tcp -m state --state NEW,ESTABLISHED -m tcp --dport 55498 -j ACCEPT

	# Allow other UForge AppCenter nodes without restriction example
	# -A INPUT -s <<ip address>>/32 -j ACCEPT 

	-A INPUT -j REJECT --reject-with icmp-host-prohibited
	-A FORWARD -j REJECT --reject-with icmp-host-prohibited
	COMMIT

/// TODO: PS will qualify the minimum ports to open for 3.6

To apply these firewall changes:

.. code-block:: shell

	# service iptables restart 
	# chkconfig iptables on

/// TODO we may add some extra kernel params here – see PS

Setup and start the deployment wizard services:

.. code-block:: shell

	# chkconfig oas-deploy on
	# chkconfig uforge-install-config on
	# service oas-deploy start
	# service uforge-install-config start

You are now ready to launch the deployment wizard.  These steps are described in :ref:`configure-uforge`.

