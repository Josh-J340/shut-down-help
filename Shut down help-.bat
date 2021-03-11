echo Hi, %name%
echo. 
echo 1.Shutdown
echo 2.Quit
 
:invalid_choice
set /p choice="enter your choice 1,2: "
if %choice%==1 goto shutdown
if %choice%==2 exit
echo invalid choice: %choice%
goto invalid_choice
 
:shutdown
cls
set /p sec="enter the number of seconds that you wish the computer to shutdown in: "
set /p message="enter the shutdown message you wish to display: "
shutdown -s -f -t %sec% -c "%message%"
echo shutdown initiated at %time%
set /p cancel="type cancel to stop shutdown "
if %cancel%==cancel shutdown -a
if %cancel%==cancel goto start  