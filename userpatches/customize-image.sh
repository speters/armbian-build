#!/bin/bash

# arguments: $RELEASE $FAMILY $BOARD $BUILD_DESKTOP
#
# This is the image customization script
#
# NOTE: It is copied to /tmp directory inside the image
# and executed there inside chroot environment
# so don't reference any files that are not already installed

RELEASE=$1
FAMILY=$2
BOARD=$3
BUILD_DESKTOP=$4

case $RELEASE in
	wheezy)
	# your code here
	;;
	jessie)
	# your code here
	# TODO: make it work (hostapd installation takes place earlier) Avoid ERROR: invoke-rc.d: policy-rc.d denied execution of start.
	#echo "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d
	;;
	trusty)
	# your code here
	;;
	xenial)
	# your code here
	;;
esac
