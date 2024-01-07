@echo off
for /f "tokens=2 delims==" %%a in ('adb shell "dumpsys power ^| grep mHoldingDisplaySuspendBlocker"') do set screen_status=%%a
if %screen_status%==true (
	goto light_screen
) else (
	goto extinguished_screen
)


:light_screen
adb shell input keyevent 3
adb shell am start com.tencent.mm/com.tencent.mm.ui.LauncherUI
exit
:extinguished_screen
pause