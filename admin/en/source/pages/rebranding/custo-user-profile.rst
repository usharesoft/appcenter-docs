.. Copyright 2017 FUJITSU LIMITED

.. _restrict-change-password:

Restricting Change Password
---------------------------

If you want to remove the ability for a user to change their password in the ``User Profile`` section of the user interface, then set the following attribute in the ``<c:client>`` section to ``false``:

.. code-block:: xml

	<c:showChangePassword>false</c:showChangePassword>

Restricting User Profile Usage
------------------------------

If you want to manage user information (email, etc) outside the user interface, then you can restrict the user profile to ``read only``. 

.. code-block:: xml

	<c:editUserProfile>false</c:editUserProfile> 

To hide completely the ``User Profile`` section of the user interface, set the following attribute to ``false``:

.. code-block:: xml

	<c:showUserProfile>false</c:showUserProfile> 
