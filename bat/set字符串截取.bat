@echo off
set status=screen_status=true
rem 在变量名后接~起始位置,终止位置, 如果位置为负数则从后往前截取。
rem 一下表示从后往前截取4个字符
set code=%status:~-4%
echo %code%
pause
