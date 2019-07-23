# Test Images
these are different groups of test images. and the running time of 
stitching each group of images, detecting stitched images and the
time the framework takes to run each group.

# Test Result
1. for the detection time, roughly 16 seconds are taken to set up the detection environment.
so the detection time below is the actual detecting time without all environment set up, so is
the framework proc time.

2. the images are 4K quality, so the stitching time is expensive.
3. if the images are 1080p quality, the stitching time could be much less. 
e.g., for the group 'Cool', the fusion time for 1080p images is only 1.164 (s)

|Group     |  size  | fusion/stitching time (s) | detection time (s)| framework proc time (s)|
|----------|--------|---------------------------|-------------------|------------------------|
|Above     |  49M   |      14.201               |  (16+) 4.650      |   (16+) 38.974         |
|Below     |  24M   |      8.141                |  (16+) 4.323      |   (16+) 25.417         |
|Cool      |  23M   |      5.877                |  (16+) 4.362      |   (16+) 23.003         |
|First     |  23M   |      2.727(Failed)        |        N/A        |   (16+) 15.208         |
|Hi        |  22M   |      6.200                |  (16+) 4.262      |   (16+) 23.190         |
|Shaak     |  35M   |      9.698                |  (16+) 4.925      |   (16+) 29.362         |
|Stop1     |  31M   |      3.489(Failed)        |        N/A        |   (16+) 17.592         |
|Stop2     |  29M   |      11.362               |  (16+) 4.770      |   (16+) 30.435         |
|Sub       |  54M   |      18.785               |  (16+) 5.144      |   (16+) 43.522         |
|Tool      |  36M   |      11.873               |  (16+) 4.994      |   (16+) 32.648         |
|Vader     |  35M   |      8.373                |  (16+) 4.605      |   (16+) 27.981         |
|pana.jpg  |  44M   |      N/A                  |  (16+) 8.115      |         N/A            |
