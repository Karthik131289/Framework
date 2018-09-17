@echo off
set LIB=${DESIGNER_HOME}\lib\runtime
set CLASSPATH=.;%LIB%\volante-client.jar;%LIB%\simplert.jar;%LIB%\resourcemanager.jar;^
%LIB%\hadoop\1.x\hadoop-core-1.2.1.jar;%LIB%\hadoop\commons-cli-1.2.jar;%LIB%\hadoop\commons-lang-2.5.jar;%LIB%\hadoop\commons-configuration-1.6.jar;%LIB%\commons-logging.jar;^
%LIB%\volante-hadooprt.jar;%LIB%\volante-hadoop-simulator.jar;^
#foreach($jar in ${JARFILES})
${jar};^
#end
%LIB%\..\ext\hsqldb.jar;

"${JRE_HOME}\bin\java" -server -mx500m -ms200m com.volante.runtime.hadoop.simulator.HadoopSimulator %*
 