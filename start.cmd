@echo off

setlocal enabledelayedexpansion

echo Waiting for System Drive to be ready...

If exist %USBDrive%Dell_Tools\ImageAssistPE.exe (
xcopy %USBDrive%Dell_Tools x:\windows\system32\ClassicPeApplication /Y /S >NUL
echo copied dependent files successfully)

start u:\Dell_Tools\automation.exe
start x:\windows\system32\LogZipper\LogZipper.exe
start x:\windows\system32\ClassicPeApplication\ImageAssistPE.exe

:eof