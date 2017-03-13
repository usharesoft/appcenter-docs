.. Copyright 2017 FUJITSU LIMITED

.. _custo-banner:

Modifying the Signed In Header
------------------------------

You can modify several elements of the header that is displayed when the user is signed in.  This includes:

	* The logo displayed on the right-hand side
	* An external URL link and tooltip (title) when the logo is clicked
	* The title displayed on the left-hand side

The following figure displays the default signed in header.

.. image:: /images/header.png

For colours and layout modifications, please refer to :ref:`customize-css`.

Modifying the Title
~~~~~~~~~~~~~~~~~~~

You can modify the title displayed in the top left-hand corner of the header by updating the following attribute under the ``<c:client>`` section:

.. code-block:: xml

	<c:headerProductName>UForge AppCenter</c:headerProductName>

Modifying the Logo
~~~~~~~~~~~~~~~~~~

You can modify the displayed signed in logo by updating the following attribute under the ``<c:client>`` section:

.. code-block:: xml

	<c:headerRightLogoUrl>images/common/fujitsu.svg</c:headerRightLogoUrl>

You can also modify the text that appears when you scroll over the logo, as well as the link the user is directed to when clicking on the link by updating the following attribute respectively:

.. code-block:: xml

	<c:headerRightLogoTitle>Go to Fujitsu.com</c:headerRightLogoTitle>
    <c:headerRightLogoLink>http://fujitsu.com</c:headerRightLogoLink>

Adding Links to the Header
~~~~~~~~~~~~~~~~~~~~~~~~~~

You can add links that will be displayed in the header to external resources.

The following example shows how to add a link to a blog under the ``<c:header>`` section:

.. code-block:: xml 

	<c:header>
        <c:linkItem>
    		<c:title>Blog</c:title>
        	<c:link>https://blog.usharesoft.com/</c:link>
        	<c:target>blank</c:target>
    	</c:linkItem>
    </c:header>

If ``<c:target>blank</c:target>`` or ``<c:target>_blank</c:target>`` are used with ``<c:linkItem>`` the page will open in a new tab.