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
