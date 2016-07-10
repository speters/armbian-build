#REVISION:=$(shell sed -n -e 's/^REVISION\=\"\([0-9.\]*\).*/\1/p' ./lib/configuration.sh)

compile:
	cp -f ./lib/compile.sh ./
	./compile.sh PROGRESS_LOG_TO_FILE=yes KERNELTAG="v4.6.2" BRANCH=next BOARD=orangepipc KERNEL_ONLY=no PROGRESS_DISPLAY=plain COMPRESS_OUTPUTIMAGE=no RELEASE=jessie
	echo
burn:
	sudo dd if=/home/soenke/tmp/armbian-compile/output/images/Armbian_5.14_Orangepipc_Debian_jessie_4.7.0.raw bs=1M of=/dev/mmcblk0
