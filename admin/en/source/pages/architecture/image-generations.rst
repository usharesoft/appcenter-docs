.. Copyright 2016 FUJITSU LIMITED

.. _image-generations:

Image Generations
=================

Image generations are very I/O intensive compared to CPU, consequently only 1 core per simultaneous generation is required.  Therefore for 10 simultaneous generations, a total of 10 cores are required for the compute notes.  

The generation capacity of UForge depends on the total number of subscribers using the service.  From experience, the ratio between generation capacity per week and the number of subscribers can be calculated as:

	number of subscribers x 0.022 = generation capacity/week

This is assuming that UForge is used 24 hours a day.  If the service is only used in one geography, then users will typically use the platform within an 8 hour period.  Therefore the generation capacity will have to be multiplied by 3 (as the other 2/3 of the day, no generations will take place).  For an 8 hour day, the generation capacity per week required for a certain number of subscribers can be calculated as:

number of subscribers x 0.066 = number of generations/week

On average, a generation takes about 5 minutes (this depends upon the size of the image being created and whether it requires to be compressed).  For each core used to generate images, the total generation capacity per week can be calculated as:

	12 x number of hours x 7 = generation capacity per core

For an 8 hour period:

	12 x 8 x 7 = 672/week (per core)

For an 24 hour period:

	12 x 24 x 7 = 2016/week (per core)
