@echo off

e:
cd e:/node/nexcloud-i18n-editor

echo ================================
set /p _isCopyAll="Ҫ����NexCloud�е����з����ļ�������? (y/n)"
echo ��������: %_isCopyAll%
pause

if "%_isCopyAll%" == "y" (
	cp -r E:/angular/NexCloud/src/assets/i18n/*.json i18n/	
	goto start
) else (
	goto copyZh
)
pause
exit


:copyZh
echo --------------------------------
set /p _copy="Ҫ����NexCloud�е�zh.json�ļ�������? (y/n)"
echo ����zh.json: %_copy%
pause
if "%_copy%" == "y" (
	cp E:/angular/NexCloud/src/assets/i18n/zh.json i18n/
)
goto start
exit


:start
rem     start explorer.exe /e,/root,E:\angular\NexCloud\src\assets\i18n\
npm run start
pause
exit