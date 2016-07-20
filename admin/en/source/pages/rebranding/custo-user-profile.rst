.. Copyright 2016 FUJITSU LIMITED

.. _restrict-change-password:

Restricting Change Password
---------------------------

If you wish to remove the ability for a user to change their password in the ``User Profile`` section of the user interface, then update the following attribute in the ``<c:client>`` section to ``false``:

.. code-block:: xml

	<c:showUserProfile>false</c:showUserProfile>

Restricting User Profile Usage
------------------------------

If you wish to manage user information (email, etc) outside the user interface, then you can restrict the user profile to ``read only``. 

.. code-block:: xml

	<c:editUserProfile>false</c:editUserProfile> 

To hide completely the ``User Profile`` section of the user interface, update the following attribute to ``false``:

.. code-block:: xml

	<c:showUserProfile>false</c:showUserProfile> 
