#if (${PACKAGE_NAME} != "")
package ${PACKAGE_NAME};
#end
import com.tplus.transform.runtime.*;
import com.tplus.transform.runtime.rest.*;
import com.tplus.transform.runtime.rest.server.*;
import com.tplus.transform.runtime.rest.server.handler.RestAuthenticationHandler;

public class ${NAME} implements RestAuthenticationHandler {

    /**
     * Authenticates every REST call. If the authentication is successful, corresponding MessageFlow will be executed.
     *
     * @param restInvocationInfo
     * @return true if authentication is successful
     * @throws TransformException
     */
    @Override
    public boolean authenticate(RestInvocationInfo restInvocationInfo) throws TransformException {
        // perform operation here
        return false;
    }
}
