@echo off
set LIB=${DESIGNER_HOME}\lib\runtime
set PLUGIN_DEPEND_LIB_JARS=%LIB%\jetty\jetty.jar
set REDIST=${DESIGNER_HOME}\redist\cpp\lib\vc2010\Release
copy "%REDIST%\jexecute${ARCH}.exe"
copy "%REDIST%\jtransformrt${ARCH}.dll"
copy "%REDIST%\transformrt${ARCH}.dll"
set CLASSPATH=.;%LIB%\simplert.jar;%LIB%\transformrt.jar;%LIB%\resourcemanager.jar;%LIB%\generalutils.jar;#foreach($jar in ${JARFILES})${jar};#end%LIB%\..\ext\hsqldb.jar;%PLUGIN_DEPEND_LIB_JARS%;
#if($ARCH == "64")
set JVM=${JRE_HOME}\bin\server\jvm.dll
#else
set JVM=${JRE_HOME}\bin\client\jvm.dll
#end
jexecute${ARCH}.exe %*