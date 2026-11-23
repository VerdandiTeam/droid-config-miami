echo none > /sys/devices/platform/soc/4e00000.ssusb/mode

mount --bind /usr/libexec/droid-hybris/system/lib64/hw/audio.hidl_compat.default.so /vendor/lib64/hw/audio.primary.holi.so

# Fingerprint HAL with Sailfish UDFPS touch handling (shipped by droid-biometry-fp)
FP_HAL=android.hardware.biometrics.fingerprint@2.3-service.miami
if [ -f /usr/libexec/droid-hybris/vendor/bin/hw/$FP_HAL ]; then
    mount --bind /usr/libexec/droid-hybris/vendor/bin/hw/$FP_HAL /vendor/bin/hw/$FP_HAL
fi
