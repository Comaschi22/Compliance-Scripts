@echo off
RD /S /Q "C:\windows\ccmcache"
RD /S /Q "C:\windows\temp"
RD /S /Q "C:\windows\%temp%"
RD /S /Q "C:\windows\prefetch"
RD /S /Q "C:\Users\%username%\AppData\Local\Temp"
powercfg -h off
exit
 
