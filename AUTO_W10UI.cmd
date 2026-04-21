@echo off
cd /d %~dp0

echo =====================================
echo W10UI AUTO (CLI MODE REAL)
echo =====================================

call W10UI.cmd ^
/target:D:\W10UI\install.wim ^
/repo:D:\W10UI ^
/drivers:D:\W10UI\Drivers ^
/updates ^
/cleanup ^
/resetbase ^
/rebuild ^
/net35 ^
/wim2esd ^
/esdcompress:LZMS ^
/iso ^
/isodir:D:\W10UI\ISO ^
/mountdir:D:\W10UI\MOUNT ^
/cabdir:D:\W10UI\CAB ^
/silent ^
/autostart

echo =====================================
echo FINALIZADO
echo =====================================
