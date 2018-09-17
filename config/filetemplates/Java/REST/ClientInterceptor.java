#if (${PACKAGE_NAME} != "")
package ${PACKAGE_NAME};
#end

import com.tplus.transform.runtime.*;
import com.tplus.transform.runtime.rest.*;
import com.tplus.transform.runtime.rest.client.*;
import com.tplus.transform.runtime.rest.client.listener.*;

public class ${NAME} implements RestClientListener {

    /**
     * This method gets invoked just before executing request.
     *
     * @param requestInfo contains request related info like {@link TransformContext}, {@link RestClientOperation} etc.
     */
    @Override
    public void onRequest(RestClientRequestInfo requestInfo) throws RestClientException {
        // perform operation here
    }

    /**
     * This method gets invoked just after receiving response.
     *
     * @param responseInfo contains response info like {@link RestResponse}, {@link RestClientOperation}, {@link TransformContext} etc.
     */
    @Override
    public void onResponse(RestClientResponseInfo responseInfo) throws RestClientException {
        // perform operation here
    }
}