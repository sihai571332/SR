# Directory Description
This directory contains the necessary Dockerfiles for edge computers and
vehicle computers. 

1. Folder 'edge' has all the necessary Dockerfiles and bash files for deploying
the framework on a edge computer

2. Folder 'vehicle' has all the necessary Dockerfiles and bash files for deploying
the framework on a vehicle computer

# Issues/Bugs
so far, following bugs/issues happened during test:

1). the 'edge_detection' container fails to run the program 
and yields 'illegal instruction(core dumped)' error

2). simulating the edge computer and vehicle computer on the same
machine will lead to the malfunction of 'edge_broadcast' container.
i.e., the broadcasting will fail and the vehicle will not receive 
the broadcasted data.

3). when running the 'edge_detection' container, it is possible
that the container will somehow kill the program by itself.

4). for successfully receiving/broadcasting, set the qos parameter to 1, otherwise
the edge may have broadcasted but the data was not received by the vehicle computer.
Also, this could cause another issue, the message number that a broker can publish is
going to be limited to 10.

5). make sure the connection among vehicles and edges are strong and stable.

# Docker Images Size Before and After Shrinking

DockerImage		BEFORE		AFTER		SIZE_REDUCED

edge/grab		11.7MB		7.47MB		36%

edge/fusion		1.13GB		679MB		41%

edge/detection	2.76GB		1.64GB		40%

edge/broadcast	87.7MB		60.6MB		31%
