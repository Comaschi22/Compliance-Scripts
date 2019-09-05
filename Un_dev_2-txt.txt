@echo off
Echo PLEASE CHECK IF PC IS CONNECTED TO COMPANY NETWORK
ipconfig
pause
Echo IF IT IS CONNECTED PRESS 1, IF IT DOESN'T PRESS 2
Set /p Connected=
If %Connected% == 1 goto connected
If %Connected% == 2 goto not-connected
********************
********************
:connected
schtasks /run /tn "\Microsoft\Windows\Workplace Join\Automatic-Device-Join"
Echo NOW PC NEED TO BE LOCKED AND USER NEED TO UNLOCK IT INTRODUCING HIS CREDENTIALS.
pause
rundll32.exe user32.dll,LockWorkStation
pause
dsregcmd /status
Echo PLEASE CHECK IF EVERYTHING IS CORRECT.
Pause
exit
********************
********************
:not-connected
echo PLEASE CONNECT TO VPN OR COMPANY NETWORK
timeout /t 10
start iexplore https://vpn.COMPANY.com
Echo ONCE USER IS CONNECT PLEASE PRESS ENTER
pause 
cls
schtasks /run /tn "\Microsoft\Windows\Workplace Join\Automatic-Device-Join"
Echo NOW PC NEED TO BE LOCKED AND USER NEED TO UNLOCK IT INTRODUCING HIS CREDENTIALS.
pause
rundll32.exe user32.dll,LockWorkStation
pause
Echo PLEASE CHECK IF EVERYTHING IS CORRECT.
dsregcmd /status

Pause
exit