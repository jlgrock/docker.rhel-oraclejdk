#!/bin/sh

# load the versions
/bin/sh ./loadenv.sh

echo "Processing for Red Hat Enterprise Linux + JDK - Version $RHEL-$JDK"

# Build the image
docker build -q --rm -t jlgrock/rhel-oraclejdk:$RHEL-$JDK .

if [ $? -eq 0 ]; then
    echo "Container Successfully Built"
else
    echo "Error: Unable to Build Container"
fi
