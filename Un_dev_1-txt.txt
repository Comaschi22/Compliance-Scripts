@echo off
schtasks /change /tn "\Microsoft\Windows\Workplace Join\Automatic-Device-Join" /disable
dsregcmd /leave
Echo NOW PC NEED WILL BE REBOOTED.
SHUTDOWN /R /C "Reinicio para efectuar cambios"
pause
exit