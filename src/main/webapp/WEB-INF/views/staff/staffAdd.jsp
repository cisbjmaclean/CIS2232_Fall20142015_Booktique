<%-- 
    Document   : bookAdd
    Created on : 7-Dec-2014, 7:05:59 PM
    Author     : Nathan Ryan
--%>

<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form action="staff" method="post">
    <spring:nestedPath path="staff">
    <h2><fmt:message key="label.staff"/></h2>
    <table>

        <tr>
            <td><label class="alignCenter" for="firstName">
                <strong><fmt:message key="label.staff.firstname"/></strong></label><br/>
            <td>
                <form:input path="firstName" value=""/>
            </td>
        </tr>
        <tr>
            <td><label class="alignCenter" for="lastName">
                <strong><fmt:message key="label.staff.lastname"/></strong></label><br/>
            <td>
                <form:input path="lastName" value=""/>
            </td>
        </tr>
        <tr>
            <td><label class="alignCenter" for="email">
                <strong><fmt:message key="label.staff.email"/></strong></label><br/>
            <td>
                <form:input path="email" value=""/>
            </td>
        </tr>
        <tr>
            <td><label class="alignCenter" for="phoneNumber">
                <strong><fmt:message key="label.staff.phone"/></strong></label><br/>
            <td>
                <form:input path="phoneNumber" value=""/>
            </td>
        </tr>

        <tr align="center">
            <td colspan="2">
                <input type="submit" value=<fmt:message key="label.submit"/>
            </td>
        </tr>
    </table>

    </div>
    </spring:nestedPath>
    </html:form>