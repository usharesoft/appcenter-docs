.. Copyright 2017 FUJITSU LIMITED

.. _apis-python-sdk:

Using the Python SDK
====================

Download and Installing the SDK
-------------------------------

The Python API is supported on all major operating systems: Linux, Mac-OS, and Windows. The easiest way to install the API is using ``pip``, the widely used package management system for installing and managing software packages written in Python.

.. note:: This API is used by the open source Hammr project. You can find more examples on how to use the API in the source code of this project.

Installing pip
~~~~~~~~~~~~~~

If you already have ``pip`` installed on your system, you can skip this section.

To install or upgrade pip, download this file:: 

	https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py

Then run the command::

	$ python get-pip.py

For more information on installing pip, refer to the official pip documentation:
http://www.pip-installer.org/en/latest/installing.html

Installing UForge Python API
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Once ``pip`` has been installed, you can now install the UForge Python API packages. You may have to run this command as ``sudo`` or ``administrator``.

See below the instructions for installing the Python API for your target platform:

.. toctree::
   :maxdepth: 1

   python-install-linux
   python-install-mac
   python-install-windows


Communicating with UForge
-------------------------

The Python API provides all the lower level communication with UForge AppCenter by creating HTTP request packets with the header information to authenticate correctly.  

Normally the first step is to get the user information of the account being used to authenticate. The response provides the URIs to the organizations, appliances and software this user has access to. The code below shows how to recuperate the user information. Note, as UForge is completely RESTful, when the method ``login()`` is used, no session is created between the client and UForge. Each request will reuse the authentication information stored in this ``api`` instance.


.. code-block:: python

	# Import the Uforge python API
	from uforge.application import Api
	# Import http client
	import httplib2
	import base64

	# UForge API instantiation (optional: disable self signed certificate check)
	client = httplib2.Http(disable_ssl_certificate_validation=True)

	login='username'
	passwd='password'

	# Header for authentication
	headers = {}
	headers['Authorization'] = 'Basic ' + base64.encodestring( login + ':' + passwd )

	# Create the API object
	api = Api('https://10.0.0.1/ufws-3.3', client = client, headers = headers)

	# Send a rquest (getting the user object)
	user = api.Users(login).Get()
	if user is not None:
    	print user.loginName + ' - ' + user.email


.. note:: All UForge Python objects are in the file ``objects.py``, contained in the Python SDK. You can find all attribute names for each object type.


Creating an Appliance Template
------------------------------

An Appliance Template contains the model of the software stack. The model includes all the operating system packages, middleware and application software for generating an image that can be provisioned on a virtual or cloud platform. To create an appliance template, you need to decide which operating system to construct the template from, as well as the name and version.

When creating an appliance or choosing an operating system, you must choose the organization where to create the appliance or to search an operating system. The user must be a member of the organization to search the organization resources. 

The following code provides an example of constructing an appliance template.

.. code-block:: python

	# TODO


Adding an OS Profile
--------------------

An Appliance Template must contain an operating system profile. This profile contains a subset of operating system packages required by the middleware an application software to run correctly. Each operating system provided by UForge contains a set of standard operating system profile templates to choose from. These contain commonly used package bundles for the operating system to run, providing the basic operating system services.

The "Minimal" OS profile contains the minimum set of packages for the operating system to run properly and provide a minimum set of networking services and administration tools.

The following code shows how to create a new OS profile from a standard OS profile template and add it to an Appliance Template.

.. code-block:: python

	# TODO


Generating a Machine Image
--------------------------

Once you are happy with the contents of an appliance template, you can then generate a machine image to practically any hypervisor or cloud environment. The following code generates a CloudStack VHD image (for Xen hypervisor). For some image types you can select the disk size and the RAM of the virtual machine to be created. These can be updated once provisioned in the cloud environment. If you have set advanced partitioning in the installation profile, then this will be used instead for the disk size. The generation is done asynchronously. 

.. code-block:: python

	# TODO





