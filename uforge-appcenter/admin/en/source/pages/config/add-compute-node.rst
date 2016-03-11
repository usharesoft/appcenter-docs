.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _add-compute-node:

Adding a Compute Node
---------------------

You can add a new OAR compute node which was instantiated from UForge but which was not configured as part of the initial deployment as follows. 

	1. Make a snapshot of the UForge Server (to be able to come back to the state without the additional OAR compute node). 

	2. Initial setup: oar-server and oarnode1 to oarnodeN already configured 

	Name oarnodeX and IP-oarnodeX respectively the name and IP address of the new node to be added to the UForge "cluster". 

	.. _note: The following commands are run on the first existing oarnode, for example oarnode1 until
stated otherwise.

	3. Copy over /etc/hosts from oarnode1 to oarnodeX with mods

	4. Get first local network interface (eth0)

	.. code-block::

	ITF=`cat /proc/net/dev|grep :|cut -d':' -f 1|grep -v lo|tr -d ' '| head -1`

	5. Get IP address associated with this interface

	.. code-block::

	IP=`/sbin/ip -o addr show $ITF 2>/dev/null| grep 'inet ' | awk '{print \$4}' |
	sed -e 's?/.*??'`

	6. Modify and copy /etc/hosts

	.. code-block::

	sed -e 's/\<oarnode1\>/oarnodeX/g' /etc/hosts | awk -v ip=$IP -v name=oarnode1
	'{print}END{printf "%s %s\n",ip,name}' | ssh IP-oarnodeX dd of=/etc/hosts

	7. Copy over uforge.conf file and others

	.. code-block::

	rsync -a /etc/UShareSoft/uforge/uforge.conf IP-oarnodeX:/etc/UShareSoft/uforge/
	rsync /etc/oar/oar.conf IP-oarnodeX:/etc/oar/
	rsync /etc/ssh/sshd_config IP-oarnodeX:/etc/ssh
	rsync -a ~oar/.ssh IP-oarnodeX:~oar

	8. Run the following commands on all oarnode1 .. oarnodeN and oar-
server but **not** oarnodeX. This adds new node in all machines /etc/hosts

	.. code-block::

	awk 'BEGIN{d=1}/\<oarnodeX\>/ {d=0}{print}END{if(d==1){print "IP-oarnodeX
	oarnodeX"}}' /etc/hosts > /tmp/hosts.NEW
	diff -q /tmp/hosts.NEW /etc/hosts >/dev/null
	if [ $? -ne 0 ]; then
    	rsync -a /etc/hosts /etc/hosts.SVG-`date +"%Y-%m-%d"`
    	cp /tmp/hosts.NEW /etc/hosts
    	rm -f /tmp/hosts.NEW
	fi 

	9. Run the following commands on oarnodeX

	.. code-block::

	chmod 666 /etc/oar/oar.conf
	/opt/UShareSoft/uforge/conf/oar_user_setup.sh
	cp /opt/UShareSoft/uforge/tmpl/nfs.tmpl /etc/sysconfig/nfs
	cp /opt/UShareSoft/uforge/tmpl/mountisos_init /etc/init.d/mountisos; chkconfig
	--add mountisos
	for s in ntpd glassfish tomcat mysql httpd oar-server openstack-glance-api
	openstack-glance-registry oas oas-deploy; do service $s stop; chkconfig --levels
	0123456 $s off ; done >/dev/null 2>&1
	ntpdate pool.ntp.org ; service ntpd start
	for s in oar-node ntpd postfix mountisos; do chkconfig --levels 2345 $s on; done
	service ntpd stop ; ntpdate pool.ntp.org ; chkconfig ntpd on ; service ntpd
	start
	service mountisos start
	service oar-node start
	service sshd restart
	/opt/UShareSoft/uforge/tools/update_scripts/uforge_update.sh -f >/dev/null 2>&1

	10. Run the following commands on oar-server to create new resources on oarnodeX from existing oarnode1 resources

	.. code-block::

	/usr/bin/oarnodes | /bin/awk '/network_address=oarnode1/
	{s=$0;gsub(".*nature=","",s);gsub(",.*","",s);printf "/usr/sbin/oarnodesetting
	-a -h oarnode3 -p cpuset=0,nature=%s\n",s}' | sh

.. _remove-node:

Removing a Node
---------------

In order to remove a node, run the following command on the UForge server: 

.. code-block::

/usr/bin/oarnodes | /bin/awk "/resource_id/ {n=\$NF} /network_address=$
{REMOVENODE}/ {printf \"/usr/sbin/oarnodesetting -s Dead -r %s ; sleep 2;
/usr/sbin/oarremoveresource %s\n\",n,n}" | sh
