

@IF X%1==X (
@set newname=AppName
) ELSE (
@set newname=%1
)
@prompt CMD:\ 
@echo ================================================================
@echo 準備開始建立 AppID: %newname%Portable
@echo ================================================================
@echo 請注意以下動作無法還原，請先備份原有的 %newname%Portable 資料夾
@echo 即將刪除並建立模板資料夾...
@pause
@echo Date: %date:~0,4%%date:~5,2%%date:~8,2% %TIME: =0% > log.txt
@cd %~dp0
@call .\cmd\build.bat %newname% >> log.txt
@echo ...完成.
@pause
