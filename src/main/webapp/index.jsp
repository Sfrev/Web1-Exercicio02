<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <fmt:bundle basename="temperature">
                <title><fmt:message key="title"/></title>
            </fmt:bundle>
        </head>
        <body>
            <fmt:bundle basename="temperature">
                        <form action="temperatura.jsp" method="post">
                            <fieldset>
                                <legend><fmt:message key="conversion"/></legend>
                                <fmt:message key="minValue"/> <br/><input type="text" name="min" /> <br/> <br/>
                                <fmt:message key="maxValue"/> <br/><input type="text" name="max" /> <br/> <br/>
                                <fmt:message key="incValue"/> <br/><input type="text" name="inc" /> <br/> <br/>
                                <input type="submit" name="converter" value="<fmt:message key="conversionRequest"/>" />
                            </fieldset>
                        </form>
            </fmt:bundle>
        </body>
</html>
