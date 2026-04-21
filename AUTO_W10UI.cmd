@echo off
cd /d %~dp0

echo =====================================
echo W10UI AUTO MODE
echo =====================================

:: =========================
:: PATHS
:: =========================
set "_target=D:\W10UI\install.wim"
set "_repo=D:\W10UI"
set "_drv=D:\W10UI\Drivers"

set "MountDir=D:\W10UI\MOUNT"
set "_CabDir=D:\W10UI\CAB"
set "ISODir=D:\W10UI\ISO"

:: =========================
:: FEATURES
:: =========================
set "AddUpdates=1"
set "AddDrivers=1"
set "Drv_Source=%_drv%"

set "Net35=1"
set "Cleanup=1"
set "ResetBase=1"
set "Rebuild=1"

:: =========================
:: ESD MÁXIMA
:: =========================
set "wim2esd=1"
set "ESDCompress=LZMS"

:: =========================
:: ISO
:: =========================
set "ISO=1"

:: =========================
:: AUTO MODE
:: =========================
set "_work=1"
set "_act=1"
set "AutoStart=1"
set "Silent=1"

echo.
echo TARGET: %_target%
echo REPO: %_repo%
echo.

call W10UI.cmd

echo =====================================
echo FINALIZADO
echo =====================================
