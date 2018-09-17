export DESIGNER_HOME="/usr/volante"
export DESIGNER_LIB="$DESIGNER_HOME/lib"
DRIVER_LIB="$DESIGNER_HOME/lib/ext/hsqldb.jar:$DESIGNER_HOME/lib/ext/mysql-connector-java-2.0.14-bin.jar:$DESIGNER_HOME/lib/ext/jdbc/ojdbc14.jar:"
JAVA=$(which java)
if [ -e "${JAVA}" ]; then
    #echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    #echo found java executable in JAVA_HOME     
    _java="$JAVA_HOME/bin/java"
fi
if [[ "$_java" ]]; then
    JAVA_VER_MAJOR=""
    JAVA_VER_MINOR=""
    JAVA_VER_BUILD=""
    
    #Split Versions
    for token in $(java -version 2>&1 | grep -i version)
    do
      if [[ $token =~ \"([[:digit:]]+)\.([[:digit:]]+)\.(.*)\" ]]
      then
        JAVA_VER_MAJOR=${BASH_REMATCH[1]}
        JAVA_VER_MINOR=${BASH_REMATCH[2]}
        JAVA_VER_BUILD=${BASH_REMATCH[3]}
        break
      fi
    done
    
    #Get Java Version
    if [ $JAVA_VER_MAJOR -eq 1 ]
    then
      _version=$JAVA_VER_MINOR
    else
      _version=$JAVA_VER_MAJOR
    fi  
    
    #Construct command line values
    if [ $_version -lt 8 ]
    then
      MEMORY_SIZE_ARG="-XX:PermSize=128m -XX:MaxPermSize=312m"
    elif [ $_version -gt 8 ]
    then
      MODULE_ARG="--add-modules java.xml.ws"
    fi
fi 
