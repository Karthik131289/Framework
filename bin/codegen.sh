cdir=$(dirname $0)
source $cdir/setenv.sh
"java" -Xmx1024m "-Ddesigner.home=$DESIGNER_HOME" "-Dexec.showinfo=false" -classpath "$DESIGNER_HOME/lib/designer.jar" com.tplus.transform.design.app.ConsoleDesigner com.tplus.transform.design.codegen.CartridgeCodeGenerator "$@"

