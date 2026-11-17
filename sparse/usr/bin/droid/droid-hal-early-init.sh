echo none > /sys/devices/platform/soc/4e00000.ssusb/mode

mount --bind /usr/libexec/droid-hybris/system/lib64/hw/audio.hidl_compat.default.so /vendor/lib64/hw/audio.primary.holi.so
