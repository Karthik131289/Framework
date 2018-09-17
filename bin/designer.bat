@echo off
call "%~dp0SetEnv.bat"
if exist %JAVA_EXE% (
	%JAVA_EXE% -Xmx650m -Xms200m %MEMORY_SIZE_ARG% "-splash:%DESIGNER_HOME%\bin\designersplash.png" %MODULE_ARG% "-Ddesigner.home=%DESIGNER_HOME%" -jar "%DESIGNER_HOME%\lib\designer.jar" %1
) else (
	echo Unable to find JAVA or JAVA_HOME is not set
)
