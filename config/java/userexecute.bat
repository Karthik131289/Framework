@echo off
set LIB=${DESIGNER_HOME}\lib\runtime
set PLUGIN_DEPEND_LIB_JARS=%LIB%\jetty\jetty.jar
set CLASSPATH=.;%LIB%\volante-client.jar;%LIB%\simplert.jar;%LIB%\resourcemanager.jar;%LIB%\generalutils.jar;^
#foreach($jar in ${JARFILES})
${jar};^
#end
%LIB%\..\ext\hsqldb.jar;^
%PLUGIN_DEPEND_LIB_JARS%;

"${JRE_HOME}\bin\java" ${MAINCLASS} %*
