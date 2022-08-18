@echo off

netsh winhttp show proxy
set /p addr="Last 2 Address:(68.68) "
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d 192.168.%addr%:44355 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
netsh winhttp import proxy source=ie

