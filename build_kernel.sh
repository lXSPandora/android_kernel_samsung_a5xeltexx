#!/bin/bash

export ARCH=arm64

if [ ! -d $(pwd)/output ];
    then
        mkdir $(pwd)/output;
    fi

make -C $(pwd) O=output ARCH=arm64 "lineage-a5xeltexx_defconfig"
make -j8 -C $(pwd) O=output ARCH=arm64

exit
