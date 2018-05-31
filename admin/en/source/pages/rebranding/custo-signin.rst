.. Copyright 2018 FUJITSU LIMITED

.. _custo-signin:

Modifying the Sign-In and Sign-Up Page
--------------------------------------

You can modify a few elements on the sign-in and sign-up pages. 

The following figure shows the default Sign-in page.

.. image:: /images/sign-in.png

Modifying the Logo
~~~~~~~~~~~~~~~~~~

You can modify the logo that appears on the sign-in and sign-up page in section ``<c:client>``:

.. code-block:: xml

	<c:signInLogoUrl>images/common/fujitsu.svg</c:signInLogoUrl>
        

You can also modify the text that appears when you scroll over the logo, as well as the link the user is directed to when clicking on the link in section ``<c:client>``:

.. code-block:: xml

    <c:signInLogoTitle>Go to Fujitsu.com</c:signInLogoTitle>
    <c:signInLogoLink>http://fujitsu.com</c:signInLogoLink>

.. _modify-title:

Modifying the Title
~~~~~~~~~~~~~~~~~~~

You can modify the title that appears in the Sign In and Sign Up pages by updating the following attribute in section ``<c:client>``:

.. code-block:: xml 

	<c:signInProductName>FUJITSU Software&lt;br/&gt;UForge</c:signInProductName>

Modifying the Sign Up Landing Page
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can modify the page you are directed to when you click on “Need an account? Sign up”, in section ``<c:client>``:

.. code-block:: xml

	<c:externalSignUpUrl>http://www.usharesoft.com/products/signup</c:externalSignUpUrl>

This allows you to create a dedicated external sign up page outside this user interface so you can customize the way users are created on the platform.

.. remove-signup:

Removing the Sign Up Page
~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to hide the text ``Need an account? Sign up`` then change the following attribute to ``false``:

.. code-block:: xml

	<c:showSignUp>false</c:showSignUp>

.. remove-remember:

Removing User and Password Caching
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

By default, the Sign In page allows the user to click a check box to remember previous sign in credentials.  This is the check box labelled ``Remember Me``.  If you want to remove this checkbox from the Sign In page, then set the following attribute to ``false``:

.. code-block:: xml

	<c:showRememberMe>false</c:showRememberMe>

.. _hide-password-reset:

Hiding Option to Reset Password
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can choose to hide the option that allows the user to reset the password from the sign in page. To do so set the option to “false” in section ``<c:client>``:

.. code-block:: xml 

	<c:showChangePassword>false</c:showChangePassword>

This is useful if you have your own authentication mechanism and do not want UForge users to be able to change the password in UForge, since their credentials are managed somewhere else.

.. note:: When setting this value to ``false``, this also hides password management for the user on the ``User Profile`` section of the user interface.

Modifying or Hiding the Opt In Message for Sign Up
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As part of GDPR, you require to inform your users what information you store and how that information is used (stated in your privacy policy and terms of use).  The sign up page provides an opt-in checkbox and message.  You can change the default message by updating the ``signUpOptInText`` in section ``<c:client>``:

 .. code-block:: xml 

	<c:signUpOptInText>I accept the Terms of Use and to receive emails regarding upgrades and maintenance.</c:signUpOptInText>

You may also hide this message by updating the ``showOptIn`` attribute in the same section to ``false``.

.. code-block:: xml 

	<c:showOptIn>true</c:showOptIn>



