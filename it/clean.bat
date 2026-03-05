@echo off
title Cleaner CMD
echo Membersihkan file sementara...

:: Bersihkan %temp%
echo Membersihkan %temp%...
del /q /f "%temp%\*.*"
for /d %%x in ("%temp%\*") do rd /s /q "%%x"

:: Bersihkan Windows Temp
echo Membersihkan C:\Windows\Temp...
del /q /f "C:\Windows\Temp\*.*"
for /d %%x in ("C:\Windows\Temp\*") do rd /s /q "%%x"

:: Bersihkan Cache Chrome
echo Membersihkan cache Chrome...
set chromeCache=%LocalAppData%\Google\Chrome\User Data\Default\Cache
del /q /f "%chromeCache%\*.*"
for /d %%x in ("%chromeCache%\*") do rd /s /q "%%x"

:: Bersihkan Cache Edge
echo Membersihkan cache Edge...
set edgeCache=%LocalAppData%\Microsoft\Edge\User Data\Default\Cache
del /q /f "%edgeCache%\*.*"
for /d %%x in ("%edgeCache%\*") do rd /s /q "%%x"

echo Pembersihan selesai!
pause