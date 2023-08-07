#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY:28524544:761a9043bec408b4215627ab9cdfa6ab8763bf1e; then
  applypatch EMMC:/dev/block/platform/15570000.ufs/by-name/BOOT:24403968:71dcd3f4476c5b3cf54db3ea0cd2c61cdb967f76 EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY 761a9043bec408b4215627ab9cdfa6ab8763bf1e 28524544 71dcd3f4476c5b3cf54db3ea0cd2c61cdb967f76:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
