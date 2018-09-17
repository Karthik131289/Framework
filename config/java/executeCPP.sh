LIB="${DESIGNER_HOME}/lib/runtime"
PLUGIN_DEPEND_LIB_JARS="$LIB/jetty/jetty.jar"
export CLASSPATH=".:$LIB/simplert.jar:$LIB/transformrt.jar:$LIB/resourcemanager.jar:$LIB/generalutils.jar:#foreach($jar in ${JARFILES})${jar}:#end$LIB/../ext/hsqldb.jar:$PLUGIN_DEPEND_LIB_JARS:"
#if (${OS} == "Linux")
REDIST="${DESIGNER_HOME}/redist/cpp/lib/linux"
export LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH"
	#if (${ARCH} == "64")
export JVM=${JRE_HOME}/lib/amd64/server/libjvm.so
	#else
export JVM=${JRE_HOME}/lib/i386/client/libjvm.so
	#end
#else
REDIST="${DESIGNER_HOME}/redist/cpp/lib/mac"
export DYLD_LIBRARY_PATH=".:$DYLD_LIBRARY_PATH"
	#if (${ARCH} == "64")
export JVM=${JRE_HOME}/lib/server/libjvm.dylib
	#else
PARENT_DIR="$(dirname "$JRE_HOME")"
export JVM="${PARENT_DIR}/Libraries/libjvm.dylib"	
	#end
#end
cp "$REDIST/jexecute${ARCH}" .
cp "$REDIST/libjtransformrt${ARCH}.so" .
cp "$REDIST/libtransformrt${ARCH}.so" .
chmod 777 ./jexecute${ARCH}
./jexecute${ARCH} $* 
