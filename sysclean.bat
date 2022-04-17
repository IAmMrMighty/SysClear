@echo off
REM Skript geschrieben von Sandro "mighty" K. (c) 2022 Legendary-Prototype
title SysClear
mode 100, 10
color 1F
echo Willkommen im SysClear-Skript!
echo Dieses Skript wird automatisch temporaere, ungenutzte Dateien von Ihrem Computer entfernen.
echo Bitte haben Sie einen Moment Geduld und schliessen Sie dieses Fenster nicht!
timeout 2 >nul
CONSOLESTATE /Min
goto clear

:clear
cleanmgr.exe /autoclean
cd C:\Windows\Temp && echo j | del -F -S *.* >nul
echo j | rmdir /S C:\Windows\Temp
cd C:\Windows\Prefetch && echo j | del -F -S *.* >nul
cd C:\Users\%username%\AppData\Local\Temp && echo j | del -F -S *.* >nul
echo j | rmdir /S C:\Users\%username%\AppData\Local\Temp >nul
exit