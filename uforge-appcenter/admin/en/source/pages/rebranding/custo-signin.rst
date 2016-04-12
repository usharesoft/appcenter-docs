.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _custo-signin:

Modifying the Sign-In and Sign-Up Page
--------------------------------------

You can modify a few elements on the sign-in and sign-up page. 

The following figure shows a sample Sign-in page, illustrating the elements that can be modified.

.. image: /images/sign-in.jpg

You can modify the logo that appears on the sign-in and sign-up page in section <c:client>::

	<c:signInLogoUrl>images/signInLogo.png</c:signInLogoUrl>

You can also modify the text that appears when you scroll over the logo, as well as the link the user is directed to when clicking on the link in section <c:client>::

	<c:signInLogoTitle>Go to UShareSoft.com</c:signInLogoTitle>
	<c:signInLogoLink>http://usharesoft.com</c:signInLogoLink>

You can modify the page you are directed to when you click on “Need an account? Sign up”, in section <c:client>::

	<c:externalSignUpUrl>http://www.usharesoft.com/products/signup</c:externalSignUpUrl>

.. _modify-title:

Modifying the Title of the UForge GUI
-------------------------------------

You can modify the title that appears in the browser when you open the portal in section <c:client>::

	<c:title>UForgePortal</c:title>


.. _hide-password-reset:

Hiding Option to Modify Password
--------------------------------

You can choose to hide the option to modify the password on the My Account page. To do so set the option to “false” in section <c:client>::

	<c:showChangePassword>false</c:showChangePassword>

This is useful if you have your own authentication mechanism and do not want UForge users to be able to change the password in UForge, since their credentials are managed somewhere else.