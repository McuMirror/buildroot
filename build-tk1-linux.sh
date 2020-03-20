#!/bin/bash

SCRIPT_VERSION=0.1

cp -r ./br2-external-ftdev/patches/br16.05/gcc/4.9.3/* ./buildroot/package/gcc/4.9.3/
cd buildroot
BR2_EXTERNAL=./br2-external-ftdev make ftdev_tk1_minimal_defconfig
BR2_EXTERNAL=./br2-external-ftdev make -j8 2>&1 | tee build.log


echo -e "\n#######################DONE##############################################"
echo ">>> Your system is ready on './output/images/'"
echo ">>> You can use './output/images/update.sh' script to flash new system."
echo ">>> Enter './update.sh -h' command to see the usage of the script."
echo -e "#######################DONE##############################################\n"
