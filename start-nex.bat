@echo off

f:
cd F:/node/angular-i18n-editor

echo ================================
set /p _isCopyAll="Ҫ����NexPoster�е����з����ļ�������? (y/n)"
echo ��������: %_isCopyAll%
pause

if "%_isCopyAll%" == "y" (
	cp -r F:/nexnovo/nex-poster-ionic3/src/assets/i18n/*.json i18n-nex/	
	goto start
) else (
	goto copyZh
)
pause
exit


:copyZh
echo --------------------------------
set /p _copy="Ҫ����NexPoster�е�zh.json�ļ�������? (y/n)"
echo ����zh.json: %_copy%
pause
if "%_copy%" == "y" (
	cp F:/nexnovo/nex-poster-ionic3/src/assets/i18n/zh.json i18n-nex/
)
goto start
exit


:start
start explorer.exe /e,/root,F:\nexnovo\nex-poster-ionic3\src\assets\i18n\
npm run start-nex
pause
exit