#!/bin/sh
source "./setenv.sh"
if [[ "$_java" ]]; then
    $_java -Xmx650m -Xms200m $MEMORY_SIZE_ARG "-splash:$DESIGNER_HOME/bin/designersplash.png" $MODULE_ARG "-Ddesigner.home=$DESIGNER_HOME" -jar "$DESIGNER_HOME/lib/designer.jar"
else
     echo Unable to find JAVA or JAVA_HOME is not set
fi

