@echo off
	del "%tmp%\*.*" /s /q /f
	FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
	del "%windir%\Temp\*.*" /s /q /f
	FOR /d %%p IN ("%windir%\Temp\*.*") DO rmdir "%%p" /s /q
	del "%windir%\Installer\*.msi" /s /q /f
	del "%windir%\Installer\*.msp" /s /q /f
	powercfg -h off