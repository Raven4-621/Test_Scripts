@echo off
rem (x, y, z] ������ʼֵ����������ֵֹ
setlocal EnableDelayedExpansion
set /a num=0 
for /l %%i in (1, 1, 10) do (
	set /a num=!num! + 1
	echo ������!num!��) 
pause
endlocal