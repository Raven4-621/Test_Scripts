@echo off
set /p interval=������ÿ�μ��ʱ�䣨�룩: 
set /p duration=�������ܵ�ִ��ʱ�䣨���ӣ�: 

:: ������ת��Ϊ�룬��Ϊ��ִ��ʱ��
set /a duration=duration*60

:: ��ȡ��ʼʱ��
set /a start=%time:~6,2%*3600 + %time:~3,2%*60 + %time:~0,2%

:loop
:: ��ȡ��ǰʱ��
set /a current=%time:~6,2%*3600 + %time:~3,2%*60 + %time:~0,2%

:: �����ѹ�ʱ��
set /a elapsed=current-start

:: �ж��Ƿ�ﵽ��ֹʱ��
if %elapsed% gtr %duration% (
    echo ��ֹʱ���ѵ��������˳���
    goto :end
)

:: ִ������
echo ִ������...
rem ���·���������Ҫѭ��ִ�е�����

:: �ȴ�ָ���ļ��ʱ��
timeout /t %interval% /nobreak > nul
goto loop

:end
echo �����Ѿ���ֹ��
pause
