#!/bin/bash

#gunzip -c BPI_M3_1080P.img.gz | dd of=/dev/mmcblk0 conv=sync,noerror bs=1k

BOARD=$1
P=../output/$BOARD/pack
echo DOWNLOAD DIR=$P

TMP_FILE="../download/${BOARD}.tmp"
IMG_FILE="../download/${BOARD}.img"


#sudo dd if=/dev/zero of=${TMP_FILE} bs=1M count=20
sudo dd if=/dev/zero of=${TMP_FILE} bs=1M count=100
LOOP_DEV=`sudo losetup -f --show ${TMP_FILE}`

sudo dd if=$P/boot0_sdcard.fex 	of=${LOOP_DEV} bs=1k seek=8 2>&1 >/dev/null
sudo dd if=$P/u-boot.fex 	of=${LOOP_DEV} bs=1k seek=16400 2>&1 >/dev/null

sudo sync

sudo losetup -d ${LOOP_DEV}

#dd if=${TMP_FILE} of=${IMG_FILE} bs=1024 skip=8 count=20472 status=noxfer
dd if=${TMP_FILE} of=${IMG_FILE} bs=1024 skip=8 count=102392 status=noxfer

gzip ${IMG_FILE}
rm -f ${TMP_FILE}
