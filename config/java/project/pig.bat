@echo off
set LIB=${DESIGNER_HOME}\lib\runtime
set CLASSPATH=.;^
%LIB%\hadoop\1.x\*;^
%LIB%\hadoop\*;^
%LIB%\volante-hadoop-simulator.jar;
set JARS=#foreach($jar in ${JARFILES})${jar};#end;%LIB%\..\ext\hsqldb.jar;%LIB%\simplert.jar;%LIB%\resourcemanager.jar;%LIB%\jta.jar

"${JRE_HOME}\bin\java" -server -mx500m -ms200m com.volante.runtime.hadoop.simulator.PigRunner "-Dpig.additional.jars=%JARS%" %*
 