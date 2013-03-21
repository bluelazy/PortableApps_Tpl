@cd %~dp0
@cd ..

@set path1=%cd%
@set path2=%path1%\DefaultAppPortable

@cd %path2%

@for /f "tokens=*" %%i in ('dir /s /b /a-d ShedkoFolderico4_*.ico') do attrib +h +s "%%i"
@for /f "tokens=*" %%i in ('dir /s /b /a-d desktop.ini') do attrib +h +s "%%i"

@for /f "tokens=*" %%i in ('dir /s /b /a-d .gitkeep') do attrib +h "%%i"

@cd %path1%

@attrib +h "%path1%\cmd"

