export TS_SELENIUM_VALUE_TLS_SUPPORT=${TS_SELENIUM_VALUE_TLS_SUPPORT:-"true"}
export TS_SELENIUM_VALUE_OPENSHIFT_OAUTH=${TS_SELENIUM_VALUE_OPENSHIFT_OAUTH:-"false"}
export E2E_OCP_CLUSTER_VERSION=${E2E_OCP_CLUSTER_VERSION:-"4.x"}
export TS_OCP_LOGIN_PAGE_PROVIDER_TITLE=${TS_OCP_LOGIN_PAGE_PROVIDER_TITLE:-"htpasswd"}
export TS_SELENIUM_LOG_LEVEL=${TS_SELENIUM_LOG_LEVEL:-"DEBUG"}
export TS_SELENIUM_USERNAME=${TS_SELENIUM_USERNAME:-"admin"}
export TS_SELENIUM_PASSWORD=${TS_SELENIUM_PASSWORD:-"admin"}
export TS_SELENIUM_MULTIUSER=${TS_SELENIUM_MULTIUSER:-"true"}
export TS_SELENIUM_W3C_CHROME_OPTION=${TS_SELENIUM_W3C_CHROME_OPTION:-"true"}
export NODE_TLS_REJECT_UNAUTHORIZED=${NODE_TLS_REJECT_UNAUTHORIZED:-0}

if [ "$E2E_OCP_CLUSTER_VERSION" = "3.x" ] ; then
    unset TS_OCP_LOGIN_PAGE_PROVIDER_TITLE
fi

echo "Initialized default values"
echo ""
echo "TS_SELENIUM_VALUE_TLS_SUPPORT =       ${TS_SELENIUM_VALUE_TLS_SUPPORT}"
echo "TS_SELENIUM_VALUE_OPENSHIFT_OAUTH =   ${TS_SELENIUM_VALUE_OPENSHIFT_OAUTH}"
echo "TS_OCP_LOGIN_PAGE_PROVIDER_TITLE =    ${TS_OCP_LOGIN_PAGE_PROVIDER_TITLE}"
echo "E2E_OCP_CLUSTER_VERSION =             ${E2E_OCP_CLUSTER_VERSION}"
echo "TS_SELENIUM_LOG_LEVEL =               ${TS_SELENIUM_LOG_LEVEL}"
echo "TS_SELENIUM_USERNAME =                ${TS_SELENIUM_USERNAME}"
echo "TS_SELENIUM_PASSWORD =                ${TS_SELENIUM_PASSWORD}"
echo "TS_SELENIUM_MULTIUSER =               ${TS_SELENIUM_MULTIUSER}"
echo "TS_SELENIUM_W3C_CHROME_OPTION =       ${TS_SELENIUM_W3C_CHROME_OPTION}"
echo "NODE_TLS_REJECT_UNAUTHORIZED =        ${NODE_TLS_REJECT_UNAUTHORIZED}"
