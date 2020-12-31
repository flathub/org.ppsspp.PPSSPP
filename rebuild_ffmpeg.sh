#!/bin/bash
if [ "$FLATPAK_ARCH" == "aarch64" ];then
	cd ffmpeg
	# GENERAL is used to set cross compile option, rename it to disable it.
	sed "s/GENERAL=/GENERAL_NO=/;" linux_arm64.sh > linux_arm64_no_cross.sh
	chmod +x linux_arm64_no_cross.sh
	./linux_arm64_no_cross.sh
fi
