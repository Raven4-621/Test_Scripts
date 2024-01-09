@echo off
rem (x, y, z] 代表起始值，步长，终止值
setlocal EnableDelayedExpansion
set /a num=0 
for /l %%i in (1, 1, 10) do (
	set /a num=!num! + 1
	echo 遍历到!num!了) 
pause
endlocal