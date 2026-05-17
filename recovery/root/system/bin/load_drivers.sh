#!/bin/sh
insmod /lib/tp/hw_module_info.ko
sleep 0.2
insmod /lib/tp/hxchipset.ko
sleep 0.2
insmod /lib/tp/hxchipset_83102.ko
sleep 1
insmod /lib/tp/nt36523.ko
sleep 0.1
echo module_loaded > /tmp/tp.log
echo yue