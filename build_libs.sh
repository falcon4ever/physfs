#!/bin/sh

# set params
NDK_ROOT_LOCAL=/c/Development/android-ndk-r8e
APP_ROOT_LOCAL=/d/projects/GitHub/physfs

# build
pushd $NDK_ROOT_LOCAL
./ndk-build -C $APP_ROOT_LOCAL $*
popd
