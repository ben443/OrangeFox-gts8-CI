#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1"
export DT_LINK="https://github.com/GrenJIkxd/android_device_samsung_gts8.git -b main"

export DEVICE="gts8"
export OEM="samsung"
export TARGET="bootimage"

export OUTPUT="OrangeFox*.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
export KERNEL_SOURCE="https://github.com/GrenJIkxd/kernel_samsung_sm8450.git"
export PLATFORM="SM-X700" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command
#export EXTRA_CMD="git clone https://github.com/OrangeFoxRecovery/Avatar.git misc"

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
