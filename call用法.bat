@echo off
call :subRountine
echo this is main routine
pause
:subRountine
echo 2
echo 3
rem goto :eof 的作用是跳出子程序（如果在子程序中）或者终止整个程序 
goto :eof 