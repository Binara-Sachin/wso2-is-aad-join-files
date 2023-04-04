# Instructions to Host the Custom Mex Endpoint for AAD Join in WSO2 IS

- Copy `aad-join-mex.jsp` and `mex.xml` to `<IS-HOME>/repository/deployment/server/webapps/mexut`
- Replace all instances of `wso2test.com` to your identity servers hostname in `mex.xml` file
- Open `<IS-HOME>/repository/deployment/server/webapps/mexut/WEB-INF/web.xml` file and make the following changes,
- Add the following servlet config

```xml
<servlet>
    <servlet-name>custom-mex</servlet-name>
    <jsp-file>/aad-join-mex.jsp</jsp-file>
</servlet>
```
 
- Add the following servlet-mapping config

```xml
<servlet-mapping>
    <servlet-name>custom-mex</servlet-name>
    <url-pattern>/custom-mex</url-pattern>
</servlet-mapping>
```

- Save and exit (No need to restart the server)
- Your new mex endpoint is `https:/{{hostname}}/mexut/custom-mex`
- To test if the endpoint is properly hosted use;

```bash
curl -k https:/{{hostname}}/mexut/custom-mex
```

- Confirm the response contains the correct `mex.xml` file with correct URLs pointing to your WSO2 IS instance
- Confirm Content-Type is `text/xml; charset=UTF-8`