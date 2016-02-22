.. Copyright (c) 2007-2016 UShareSoft, All rights reserved

Generating a Machine Image
--------------------------

Once an appliance template has been created, you can generate a machine image that packages the stack to run on a particualr virtual, cloud or physical environment.

To generate a machine image:
	1. Go to the ``VM Builder`` tab.
	2. Select the appliance from the ``Appliance Library``. 
	3. Click on the ``generate`` button at the top right to display all possible image formats which can be generated. The formats are organized by type.

	.. image:: /images/appliance-generate-image.jpg

	4. Choose the image format you would like to generate. 
	5. You will see a recap of the image you are about to generate. 

	.. note:: If you want to ignore dependency checking during image generation (for example because you have knowingly removed a package dependency that is not required in your environment), then you check the option ``ignore dependency checking warnings``. Note that this is an advanced option and should not be used systematically.

	6. You can set the disk size, then click the ``Generate`` button to launch a generation in UForge for this appliance template. The generation will take a few minutes to complete (depending on the number of packages in the appliance template and the disk size chosen). The generation progress is shown.

Once the generation is complete, you can download the image locally, or for certain cloud formats register the machine image directly to the target environment using your cloud credentials.
