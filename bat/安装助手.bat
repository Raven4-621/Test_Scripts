@echo off
cd %~dp0
:menu
cls
echo ==================================================
echo                    安装菜单
echo ==================================================
echo  1. 安装应用A工具
echo  2. 安装应用B工具
echo  3. 安装应用C工具
echo  q. 退出程序
echo ==================================================
echo.
set /p choice=请输入你的选择（1, 2, 3, ... , q）并按回车键: 

if "%choice%"=="1" goto InstallA
if "%choice%"=="2" goto InstallB
if "%choice%"=="3" goto InstallC
if "%choice%"=="q" goto Quit

echo 无效输入，请重新输入。
pause
goto menu

:InstallA
adb install -g ./appA.apk
if %ERRORLEVEL%==0 (
    echo 安装已完成
) else (
    echo 安装失败
)
pause
goto menu

:InstallB
adb install -g ./appB.apk
if %ERRORLEVEL%==0 (
    echo 安装已完成
) else (
    echo 安装失败
)
pause
goto menu

:InstallC
adb install -g ./appC.apk
if %ERRORLEVEL%==0 (
    echo 安装已完成
) else (
    echo 安装失败
)
pause
goto menu

:Quit
echo 感谢使用！再见！
pause
exit
