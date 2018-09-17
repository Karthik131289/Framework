#if (${PACKAGE_NAME} != "")
package ${PACKAGE_NAME};
#end

import com.tplus.transform.runtime.MessageFlow;
import com.tplus.transform.runtime.rest.*;
import com.tplus.transform.runtime.rest.server.*;
import com.tplus.transform.runtime.rest.server.handler.ServletListener;

import javax.servlet.ServletConfig;
import java.util.List;

public class ${NAME} implements ServletListener {

    /**
     * Invoked when the servlet started.
     *
     * @param restServiceDefs List of service definitions.
     * @param servletConfig   Servlet configuration.
     * @throws RestServerException
     */
    @Override
    public void onStart(List<RestServerServiceDefs> restServiceDefs, ServletConfig servletConfig) throws RestServerException {
        // perform operation here
    }

    /**
     * Notifies on each incoming call before executing corresponding {@link MessageFlow},
     * if the authentication is successful.
     *
     * @param invocationInfo contains information related to current request.
     * @throws RestServerException
     */
    @Override
    public void onRequest(RestInvocationInfo invocationInfo) throws RestServerException {
        // perform operation here
    }

    /**
     * Notifies on each outgoing call after executing corresponding {@link MessageFlow}.
     * If the execution of {@link MessageFlow} is successful.
     *
     * @param responseInfo contains information related to current response.
     * @throws RestServerException
     */
    @Override
    public void onResponse(RestResponseInfo responseInfo) throws RestServerException {
        // perform operation here
    }

    /**
     * Invoked when the servlet destroyed.
     *
     * @param restServiceDefs Model hold the REST Service, REST Operation and Rest Parameter Details.
     * @throws RestServerException
     */
    @Override
    public void onStop(List<RestServerServiceDefs> restServiceDefs) throws RestServerException {
        // perform operation here
    }
}