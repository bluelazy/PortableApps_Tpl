
@set appid=%1Portable
@set appini=.\%appid%\%appid%.ini
@set appinidef=.\DefaultAppPortable\Other\Source\AppNamePortable.ini

@echo [%appid%]> %appini%
@echo:>> %appini%

@copy "%appini%" + "%appinidef%" "%appini%"

@attrib +h "%appini%"
