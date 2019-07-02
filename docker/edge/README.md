# Edge Computer Docker Images

1. edge_grab

2. edge_fusion

3. edge_detection

4. edge_broadcast

# Usage
To build images and run corresponding containers,
simply run the 'buildrun' bash file in this directory:

$ bash buildrun.sh

# Bugs and Issues
so far, following bugs/issues happened during test:

1). the 'edge_detection' container fails to run the program 
and yields 'illegal instruction(core dumped)' error

2). simulating the edge computer and vehicle computer on the same
machine will lead to the malfunction of 'edge_broadcast' container.
i.e., the broadcasting will fail and the vehicle will not receive 
the broadcasted data.

3). when running the 'edge_detection' container, it is possible
that the container will somehow kill the program by itself.
