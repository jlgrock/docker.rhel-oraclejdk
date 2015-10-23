#!/bin/sh

# load the versions
. ./loadenv.sh

# Build the image
. ./build.sh

# Publish the image
docker push jlgrock/rhel-oraclejdk:$RHEL-$JDK

if [ $? -eq 0 ]; then
    echo "Image Successfully Published with tag $RHEL-$JDK"
else
    echo "Error: Unable to Publish Image"
fi