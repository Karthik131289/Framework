SET DESIGNER_HOME=D:\Karthik\Designer\VolanteDesigner_6.0.0
SET DESIGNER_LIB=%DESIGNER_HOME%\lib
SET JRE_HOME=%DESIGNER_HOME%\jre
if EXIST "%DESIGNER_HOME%\lib\designer.jar" goto finish

:wrongdir	
echo The DESIGNER_HOME environment variable is incorrect. Edit SetEnv.bat script to set this environment variable.

:finish

set JAVA_EXE="%JRE_HOME%\bin\java.exe"
for /f tokens^=2-5^ delims^=.-_+^" %%j in ('%JAVA_EXE% -fullversion 2^>^&1') do (
	if %%j EQU 1 (
		set jver=%%k
	) else (
		set jver=%%j
	)
)
if %jver% LSS 8 (
    set MEMORY_SIZE_ARG="-XX:PermSize=128m" "-XX:MaxPermSize=312m"
) else (
	set MEMORY_SIZE_ARG=
	if %jver% GTR 8 (
		set MODULE_ARG=--add-modules java.xml.ws
	) else (
		set MODULE_ARG=
	)
)
SET DRIVER_LIB=%DESIGNER_HOME%\lib\ext\hsqldb.jar;%DESIGNER_HOME%\lib\ext\mysql-connector-java-2.0.14-bin.jar;%DESIGNER_HOME%\lib\ext\jdbc\ojdbc14.jar;

