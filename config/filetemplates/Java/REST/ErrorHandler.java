#if (${PACKAGE_NAME} != "")
package ${PACKAGE_NAME};
#end
import com.tplus.transform.runtime.*;
import com.tplus.transform.runtime.rest.*;
import com.tplus.transform.runtime.rest.server.*;
import com.tplus.transform.runtime.rest.server.handler.RestErrorHandler;

import java.io.IOException;

public class ${NAME} implements RestErrorHandler {

    /**
     * @param errorInfo
     * @return true if default error handling should be used. false if you have handled the error
     * @throws IOException
     */
    @Override
    public boolean onError(RestErrorInfo errorInfo) throws IOException {
        // perform operation here
        return false;
    }
}
