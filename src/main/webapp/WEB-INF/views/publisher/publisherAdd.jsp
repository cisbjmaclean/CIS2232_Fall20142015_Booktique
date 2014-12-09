<%-- 
    Document   : publisherAdd
    Created on : 7-Dec-2014, 7:07:33 PM
    Author     : Nathan Ryan
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form action="publisher" method="post">
    <spring:nestedPath path="publisher">
        <h2><fmt:message key="label.publisher"/></h2>
        <table>                

            <tr>
                <td><label class="alignCenter"  for="name">
                        <strong><fmt:message key="label.publisher.name" /></strong></label><br />
                        <td>
                            <form:input path="name" value=""/>            
                        </td>
                </td>
            </tr>
            <tr>
                <td><label class="alignCenter"  for="publisherId">  
                        <strong><fmt:message key="label.publisher.id" /></strong></label><br />
                        <td>
                            <form:input path="publisherId" value=""/>
                        </td>
            </tr>
            <tr>
                <td><label class="alignCenter"  for="returnAddress">  
                            <strong><fmt:message key="label.publisher.address" /></strong></label><br />
                            <td>
                                <form:input path="returnAddress" value=""/>
                            </td>

            <tr/>
            <tr>
                <td><label class="alignCenter"  for="email">  
                            <strong><fmt:message key="label.publisher.email" /></strong></label><br />
                            <td>
                                <form:input path="email" value=""/>
                            </td>

            <tr/>
            <tr>
                <td><label class="alignCenter"  for="phone">  
                            <strong><fmt:message key="label.publisher.phone" /></strong></label><br />
                            <td>
                                <form:input path="phone" value=""/>
                            </td>

            <tr/>
            <tr>
                <td><label class="alignCenter"  for="fax">  
                            <strong><fmt:message key="label.publisher.fax" /></strong></label><br />
                            <td>
                                <form:input path="fax" value=""/>
                            </td>

            <tr/>
            <tr>
                <td><label class="alignCenter"  for="notes">  
                            <strong><fmt:message key="label.publisher.notes" /></strong></label><br />
                            <td>
                                <form:textarea path="notes" value=""/>
                            </td>

            <tr/>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value=<fmt:message key="label.submit"/>
                </td>
            </tr>
        </table>

    </div>
</spring:nestedPath>
</html:form>
