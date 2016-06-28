.. Copyright 2016 FUJITSU LIMITED

.. _image-directory:

Creating Dedicated Image Directory
----------------------------------

If you plan to include your own logos and images when customizing Portal, you should create a sub-directory under: /var/opt/UShareSoft/uforge-client/gwt/uforge/templates/images

For example, place all your logos and images under: /var/opt/UShareSoft/uforge-client/gwt/uforge/templates/images/myCompany

In all of the following sections, if you update logos and images, use your new path. For example::

	<c:signInLogoUrl>images/signInLogo.png</c:signInLogoUrl>

Must be changed to::

	<c:signInLogoUrl>images/myCompany/signInLogo.png</c:signInLogoUrl>
