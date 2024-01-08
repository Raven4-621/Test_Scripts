@echo off
setlocal EnableDelayedExpansion
set /p num1=please input a num:
set /a num2=!num1!
set /p num3=please input another num:
set /a num4=!num3!
if !num2! gtr !num4! (
	set /a num5=!num2!-!num4! & echo !num2! is grater !num5! than !num4!
) else if !num2! equ !num4! (
	echo the same value 
) else (
	set /a num6=!num4!-!num2! & echo !num2! is less !num6! than !num4!)
pause