.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

.. _custo-footer:

Customizing the Footer
----------------------

UForge Portal allows you to customize the information that appears in the footer. The config.xml file provides two sections to modify this info:

	* <c:client>
	* <c:footer>

The following figure illustrates a sample footer. 

.. image: /images/footer.jpg

Setting the Version
~~~~~~~~~~~~~~~~~~~

To set the version number in the footer, under <c:client>::

	<c:version>3.4.2</c:version>


Hiding the UForge URL
~~~~~~~~~~~~~~~~~~~~~

To show or hide the UForge URL, under <c:client> enter “false” if you do not want to show the URL::

	<c:showUForgeUrl>false</c:showUForgeUrl>

Modifying the Copyright
~~~~~~~~~~~~~~~~~~~~~~~

To modify the copyright under <c:client>::

	<c:copyright>Copyright © 2007-2014</c:copyright>

Modifying the Links
~~~~~~~~~~~~~~~~~~~

To modify the links in the footer, under <c:footer>.

The following example shows the twitter link. If you want to remove the twitter link, delete the complete section shown below. You can also modify simply the title or link. 

You can also include any other links you like in this section::

	<c:footerItem>
           <c:title>twitter</c:title>
           <c:link>https:twitter.com/usharesoft</c:link>
	</c:footerItem>

Modifying the Terms of Use or Privacy Policy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to modify the Terms of Use or Privacy Policy, you MUST include the UShareSoft Terms of Use and Privacy Policy as part of your own. 

To modify the Terms of Use or Privacy Policy, go to the sections under <c:footer> and enter the path to the new terms of use and/or privacy policy. You can also modify the link text if you wish::

	<c:footerItem>
           <c:title>terms of use</c:title>
           <c:link>https//www.usharesoft.com/about/terms-of-use.html</c:link>
	</c:footerItem>
	<c:footerItem>
           <c:title>privacy policy</c:title>
           <c:link>https//www.usharesoft.com/about/privacy-policy.html</c:link>
	</c:footerItem>

