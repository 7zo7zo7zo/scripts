#!/bin/sh

export THEOS=~/theos

git clone --recursive https://github.com/theos/theos.git $THEOS

curl -LO https://github.com/sbingner/llvm-project/releases/latest/download/linux-ios-arm64e-clang-toolchain.tar.lzma
TMP=$(mktemp -d)
tar -xvf linux-ios-arm64e-clang-toolchain.tar.lzma -C $TMP
mkdir -p $THEOS/toolchain/linux/iphone
mv $TMP/ios-arm64e-clang-toolchain/* $THEOS/toolchain/linux/iphone/
rm -r linux-ios-arm64e-clang-toolchain.tar.lzma $TMP

curl -LO https://github.com/theos/sdks/archive/master.zip
TMP=$(mktemp -d)
unzip master.zip -d $TMP
mv $TMP/sdks-master/*.sdk $THEOS/sdks
rm -r master.zip $TMP
