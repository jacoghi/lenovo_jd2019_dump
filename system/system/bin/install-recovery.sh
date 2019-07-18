#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:6ac7b856220abb270d96ae2a422cee5bf3ada78a; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:3029e45c9869919f9b5e802ea1a3cda6a693d0fa EMMC:/dev/block/bootdevice/by-name/recovery 6ac7b856220abb270d96ae2a422cee5bf3ada78a 67108864 3029e45c9869919f9b5e802ea1a3cda6a693d0fa:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
