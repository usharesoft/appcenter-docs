.. Copyright 2017 FUJITSU LIMITED

.. _image-directory:

Creating Dedicated Image Directory
----------------------------------

If you plan to include your own logos and images when customizing Portal, you should create a sub-directory under: ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates/images``

For example, place all your logos and images under: ``/var/opt/UShareSoft/uforge-client/gwt/uforge/templates/images/myCompany``

In all of the following sections, if you update logos and images, use your new path. For example:

.. code-block:: xml 

	<c:signInLogoUrl>images/signInLogo.png</c:signInLogoUrl>

Must be changed to:

.. code-block:: xml 

	<c:signInLogoUrl>images/myCompany/signInLogo.png</c:signInLogoUrl>
