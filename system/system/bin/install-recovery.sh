#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:38ceb041387730bd848d259d85684fe29d3d91d2; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:133ddbeddd7e2c99a0e3038769e1f8ba2d718f54 EMMC:/dev/block/bootdevice/by-name/recovery 38ceb041387730bd848d259d85684fe29d3d91d2 67108864 133ddbeddd7e2c99a0e3038769e1f8ba2d718f54:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
