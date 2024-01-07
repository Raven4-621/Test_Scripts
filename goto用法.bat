@echo off
echo goto的作用是跳回标签位置
pause
rem goto的作用是回到标签下面一行开始顺序执行。
goto 标签
:重新开始
echo 1
:标签
echo 2
pause
goto :重新开始

