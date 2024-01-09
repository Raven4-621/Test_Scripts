@echo off
set /p interval=请输入每次间隔时间（秒）: 
set /p duration=请输入总的执行时间（分钟）: 

:: 将分钟转换为秒，作为总执行时间
set /a duration=duration*60

:: 获取开始时间
set /a start=%time:~6,2%*3600 + %time:~3,2%*60 + %time:~0,2%

:loop
:: 获取当前时间
set /a current=%time:~6,2%*3600 + %time:~3,2%*60 + %time:~0,2%

:: 计算已过时间
set /a elapsed=current-start

:: 判断是否达到终止时间
if %elapsed% gtr %duration% (
    echo 终止时间已到，程序退出。
    goto :end
)

:: 执行命令
echo 执行命令...
rem 在下方放入你想要循环执行的命令

:: 等待指定的间隔时间
timeout /t %interval% /nobreak > nul
goto loop

:end
echo 程序已经终止。
pause
