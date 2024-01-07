for /f "tokens=2 delims==" %%a in ('adb shell dumpsys power ^| findstr "mHoldingDisplaySuspendBlocker"') do echo %%a
pause