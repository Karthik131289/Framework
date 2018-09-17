REM Deprecated in 3.0 use execute.bat
set LIB=${designer.home}/lib/runtime
set PLUGIN_DEPEND_LIB_JARS=%LIB%/jetty/jetty.jar
set CLASSPATH=.;%LIB%\simplert.jar;%LIB%\..\ext\hsqldb.jar;%PLUGIN_DEPEND_LIB_JARS%;#foreach($jar in ${JARFILES})${jar};#end

"${JRE_HOME}\bin\java" Main %1
