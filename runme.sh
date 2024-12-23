#!/bin/bash
#
# This script runs a Docker container, bind mounting ~/.ssh for git interaction,
# and mounting a Volume which has the repository checked out into it.

echo "Building the image..."

sudo docker build -t ros-desktop .

echo "Running the container..."

sudo docker run -it --rm \
	--mount type=bind,src=/home/dw/.ssh,dst=/root/.ssh \
	--mount type=volume,src=capstone,dst=/root/capstone \
       	ros-desktop
