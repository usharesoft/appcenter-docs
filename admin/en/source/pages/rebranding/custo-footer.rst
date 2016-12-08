.. Copyright 2016 FUJITSU LIMITED

.. _custo-footer:

Modifying the Footer
----------------------

UForge Portal allows you to customize the information that appears in the footer. The config.xml file provides two sections to modify this info:

	* ``<c:client>``
	* ``<c:footer>``


The version number is automatically provided as part of the initial configuration and any update of the platform.

For colours and layout modifications, please refer to :ref:`customize-css`.


Modifying the Copyright
~~~~~~~~~~~~~~~~~~~~~~~

To modify the copyright under ``<c:client>``:

.. code-block:: xml

	<c:copyright>Copyright © 2007-2014</c:copyright>

Adding Links to the Footer
~~~~~~~~~~~~~~~~~~~~~~~~~~

You can add links to external resources under the ``<c:footer>`` section.

The following example shows how to add a link to twitter:

.. code-block:: xml 

	<c:footer>
		<c:linkItem>
	           <c:title>twitter</c:title>
	           <c:icon>images/common/icons/twitter.svg</c:icon>
	           <c:link>https:twitter.com/usharesoft</c:link>
		</c:linkItem>
	</c:footer>

You can add as many links as you like by adding a ``linkItem`` for each link.


Adding Terms of Use or Privacy Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you wish to add your own "Terms of Use" or "Privacy Policy", you MUST include the unchanged UShareSoft Terms of Use and Privacy Policy as part of it. 

To modify the Terms of Use or Privacy Policy, go to the sections under <c:footer> and enter the path to the new terms of use and/or privacy policy. You can also modify the link text if you wish:

.. code-block:: xml 

	<c:footer>
		<c:linkItem>
	           <c:title>terms of use</c:title>
	           <c:link>https//www.usharesoft.com/about/terms-of-use.html</c:link>
		</c:linkItem>
		<c:linkItem>
	           <c:title>privacy policy</c:title>
	           <c:link>https//www.usharesoft.com/about/privacy-policy.html</c:link>
		</c:linkItem>
	</c:footer>

