#!/bin/sh

# Load the version from the VERSION file
for line in $(< VERSION)
do
  case $line in
    RHEL=*)  eval $line ;; # beware! eval!
	JDK=*)  eval $line ;; # beware! eval!
    *) ;;
   esac
done
echo "Processing for Red Hat Enterprise Linux + JDK - Version $RHEL-$JDK"

# Build the image
docker build -q --rm -t jlgrock/rhel-oraclejdk:$RHEL-$JDK .

if [ $? -eq 0 ]; then
    echo "Container Successfully Built"
else
    echo "Error: Unable to Build Container"
fi
