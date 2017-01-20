.. Copyright 2017 FUJITSU LIMITED

.. _authentication-sso:

Customizing UForge Authentication for SSO
-----------------------------------------

You need to build a custom AuthN/AuthZ module in order to perform Single Sign On to the UForge Platform.

The goal is to gain authenticated and authorized access to the RESTful UForge Webservice underlying methods. These methods are protected by a SecurityFilter and a SecurityContext using what is called a filter chain. The UForge Platform uses JSR 311(JAX-RS: The JavaTM API for RESTful Web Services), JSR 250 (Common Annotations for the JavaTM Platform) and Jersey (RESTful Web Services in Java).

To gain access through this filter chain to the UForge Webservice methods, you first need to be  “Authenticated” (to prove who you are) and then be “Authorized”, that is, be granted entitlements to perform or access certain methods of the UForge Webservice.

So, in order to connect to the UForge Webservice you first have to pass through the “authentication filter chain” of the web service. These filters are defined by default in web.xml

By default there are two filters: 

	* BasicAuthenticationFilter: the Basic method from `RFC2617 <http://tools.ietf.org/html/rfc2617>`_
	* APIKeyAuthenticationFilter: the UForge internal APIKey authentication.

You should create an implementation of the interface IAuthenticationFilter returning an object implementing IUserAuthentication if authentication is ok, an exception if the authentication is invalid and null if your filter can not handle the request authentication.

The following is a basic example of an implementation of the RFC.

.. code-block:: java

    package com.usharesoft.authentication;
    import com.sun.jersey.api.core.HttpRequestContext;
    import com.sun.jersey.core.util.Base64;
    import com.sun.jersey.spi.container.ContainerRequest;
    import com.usharesoft.common.messages.User;
    import com.usharesoft.db.DbAccess;
    import com.usharesoft.db.DBException;
    import com.usharesoft.services.IDMService;
    import com.usharesoft.services.ServicesContext;
    import com.usharesoft.services.exceptions.UForgeException;
    import org.apache.log4j.Logger;
    import org.hibernate.Criteria;
    import org.hibernate.criterion.Restrictions;
    import java.net.URI;
    import java.util.List;
    import java.util.regex.Matcher;
    import java.util.regex.Pattern;

    public class BasicAuthenticationFilter implements IAuthenticationFilter {
        private static final Logger logger = Logger.getLogger(BasicAuthenticationFilter.class);
        private static final Pattern CREDENTIALS = Pattern.compile("^basic\\s+(?.*)$", Pattern.CASE_INSENSITIVE);
        private static final Pattern USER_PASS = Pattern.compile("^(?[^:]*):(?.*)$", Pattern.CASE_INSENSITIVE);
        @Override
        public IUserAuthentication filter(ContainerRequest containerRequest) throws UForgeException {
            logger.trace("Getting Auth from Http Header");
            return getUserAuthentication(containerRequest);
        }
        protected IUserAuthentication getUserAuthentication(HttpRequestContext containerRequest) throws UForgeException {
            /*
            * Get the authentication information from the HTTP header Return an
            * empty string if no authorization information is found
            */
            List authorizationList = containerRequest.getRequestHeaders().get("Authorization");
            if (authorizationList == null || authorizationList.isEmpty()) {
                return null;
            }
            /*
            * Get the first value as there should only be one value here as we will
            * only support Basic authentication for the moment Remove the Basic Tag
            */
            String credentials = authorizationList.get(0);
            logger.trace("Credentials: " + credentials);
            /*
            * Decode credentials
            */
            Matcher matcher = CREDENTIALS.matcher(credentials);
            if (!matcher.matches()) {
                logger.debug("Not matched Authorization header: " + credentials);
                return null;
            }
            /*
            * Consider that we match
            */
            /*
            * Decode base64 credentials
            */
            String base64basicCredentials = matcher.group("credential");
            if (!Base64.isBase64(base64basicCredentials)) {
                logger.warn("Invalid Base64 basic-credentials: " + base64basicCredentials);
                throw new UForgeException(UForgeException.UNAUTHORIZED, "ERROR.AUTHENTICATION.INVALID");
            }
            String basicCredentials = Base64.base64Decode(base64basicCredentials);
            /*
            * Decode user-pass
            */
            matcher = USER_PASS.matcher(basicCredentials);
            if (!matcher.matches()) {
                logger.warn("Invalid basic-credentials: " + basicCredentials);
                throw new UForgeException(UForgeException.UNAUTHORIZED, "ERROR.AUTHENTICATION.INVALID");
            }
            /*
            * Compute fields
            */
            String userId = matcher.group("userId");
            String userName;
            String targetUserName = null;
            if (UserAuthentication.isCompositeUserTargetUser(userId)) {
                userName = UserAuthentication.getCompositeUser(userId);
                targetUserName = UserAuthentication.getCompositeTargetUser(userId);
            } else {
                userName = userId;
            }
            String password = matcher.group("password");
            /*
            * Sanity checks
            */
            if (password == null) {
                logger.warn("Invalid password");
                throw new UForgeException(UForgeException.UNAUTHORIZED, "ERROR.AUTHENTICATION.INVALID");
            }
            if (userName == null) {
                logger.warn("Invalid user");
                throw new UForgeException(UForgeException.UNAUTHORIZED, "ERROR.AUTHENTICATION.INVALID");
            }
            return getUserAuthentication(containerRequest.getRequestUri(), userName, password, targetUserName);
        }
        protected IUserAuthentication getUserAuthentication(URI requestUri, String userName, String password, String targetUserName) throws UForgeException {
            /*
            * Check with IDM
            */
            ServicesContext.get().getService(IDMService.class).checkUserAuth(userName, password);
            /*
            * Grab users
            */
            User user;
            User targetUser = null;
            DbAccess db = ServicesContext.get().getService(DbAccess.class);
            try {
                Criteria userCriteria = db.getDbManager().newCriteria(User.class);
                userCriteria.add(Restrictions.eq("loginName", userName));
                user = UserAuthentication.getUser(db, userCriteria);
                if (targetUserName != null) {
                    Criteria targetUserCriteria = db.getDbManager().newCriteria(User.class);
                    targetUserCriteria.add(Restrictions.eq("loginName", targetUserName));
                    targetUser = UserAuthentication.getUser(db, targetUserCriteria);
                }
            } catch (DBException e) {
                throw new UForgeException(UForgeException.DB_ERROR, e);
            }
            logger.debug("Basic Authentication is OK");
            return new UserAuthentication(user, targetUser);
        }
    }

There are two ways to provide your authentication filter:

	* modifying the webservice ``web.xml``. You will need to modify the web.xml template by replacing the com.usharesoft.authentication.AuthenticationFilters value by your filter classname if you want only your authentication
	* using the ``@Provider`` annotated class (the order can be important if the two authentication methods are used in the same request)

You can add a filter, but you cannot remove the default authentication filters, nor choose the order. To add your filter, use the following Jersey annotation:

.. code-block:: java

    package my.company.authentication

    import javax.ws.rs.ext.Provider;
    implements com.usharesoft.authentication.IAuthenticationFilter;

    @Provider
    class SuperAuthenticationFilter implements IAuthenticationFilter {
    ...
    }
