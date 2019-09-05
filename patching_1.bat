@echo off

Title Patching

echo WE WILL UPDATE WINDOWS, PLEASE SELECT THE OPTION "Check online for updates from Microsoft Update"

timeout /t 10

Start ms-settings:windowsupdate

echo.

echo PLEASE IN CASE THAT OPTION DOESN'T APPEAR PRESS 1

echo. 

echo IF IT DOES PLEASE WAIT UNTIL WINDOWS UPDATE AND RESTART 
MACHINE IF IT IS REQUIRED.

echo.

pause

Set /p Wupdate=
if %Wupdate% == 1 goto 1

:1
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v DisableWindowsUpdateAccess /t REG_DWORD /d 0

start ms-settings:windowsupdate-action

echo PLEASE VERIFY IF THE OPTION "Check online for updates from Microsoft Update" APPEARED.

echo.

echo PLEASE WHEN UPDATES ARE DONE RESTART MACHINE AND EXECUTE "patching_2.bat"

pause

exit
 