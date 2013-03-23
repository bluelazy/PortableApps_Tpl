@set appidname=%1Portable

@cd %cd%

@echo make new folder "%1"
@echo ================================
@echo Start Clean %1
@echo ------------------------------------------------------------------------
@del /f /s /q /A .\%1\*.*
@RD /s /q .\%1
@echo ================================
@echo attrib.bat
@echo ------------------------------------------------------------------------
@call .\cmd\attrib.bat
@echo ================================
@echo Copy DefaultApp Template To %1
@echo ------------------------------------------------------------------------
@XCOPY .\DefaultAppPortable .\%appidname%\ /D/K/E/Y/C/I/H
@echo ================================
@echo Create App\AppInfo\Launcher\%appidname%.ini
@echo ------------------------------------------------------------------------
@move .\%appidname%\App\AppInfo\Launcher\AppNamePortable.ini .\%appidname%\App\AppInfo\Launcher\%appidname%.ini
@echo ================================
@echo Create App\AppInfo\appinfo.ini
@echo ------------------------------------------------------------------------
@call .\cmd\appinfo.bat %1 > .\%appidname%\App\AppInfo\appinfo.ini
@echo ================================
@echo Create %1Portable.ini
@echo ------------------------------------------------------------------------
@call .\cmd\AppNamePortable.bat %1
