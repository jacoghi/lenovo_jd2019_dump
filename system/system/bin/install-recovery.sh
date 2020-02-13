#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:6393866e8ea27b9913efc9d1e3c8ab31575d39ad; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:6ab1c859933369b9d6a4ec368f58561645eefcdb EMMC:/dev/block/bootdevice/by-name/recovery 6393866e8ea27b9913efc9d1e3c8ab31575d39ad 67108864 6ab1c859933369b9d6a4ec368f58561645eefcdb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
