

@IF X%1==X (
@set newname=AppName
) ELSE (
@set newname=%1
)
@prompt CMD:\ 
@echo ================================================================
@echo �ǳƶ}�l�إ� AppID: %newname%Portable
@echo ================================================================
@echo �Ъ`�N�H�U�ʧ@�L�k�٭�A�Х��ƥ��즳�� %newname%Portable ��Ƨ�
@echo �Y�N�R���ëإ߼ҪO��Ƨ�...
@pause
@echo Date: %date:~0,4%%date:~5,2%%date:~8,2% %TIME: =0% > log.txt
@cd %~dp0
@call .\cmd\build.bat %newname% >> log.txt
@echo ...����.
@pause
