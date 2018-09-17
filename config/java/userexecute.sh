#!/bin/sh
LIB="${DESIGNER_HOME}/lib/runtime"
PLUGIN_DEPEND_LIB_JARS="$LIB/jetty/jetty.jar"
CLASSPATH=".:$LIB/volante-client.jar:$LIB/simplert.jar:$LIB/transformrt.jar:$LIB/resourcemanager.jar:$LIB/generalutils.jar:#foreach($jar in ${JARFILES})${jar}:#end$LIB/../ext/hsqldb.jar:$PLUGIN_DEPEND_LIB_JARS:"

"${JRE_HOME}/bin/java"  -classpath "$CLASSPATH" -server -mx500m -ms200m  ${MAINCLASS} "$*"
