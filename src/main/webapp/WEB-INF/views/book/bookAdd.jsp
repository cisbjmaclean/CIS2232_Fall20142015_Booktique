<%-- 
    Document   : bookAdd
    Created on : 7-Dec-2014, 7:05:59 PM
    Author     : Nathan Ryan
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form action="book" method="post">
    <spring:nestedPath path="book">
        <h2><fmt:message key="label.book"/></h2>
        <table>                

            <tr>
                <td><label class="alignCenter"  for="text">
                        <strong><fmt:message key="label.book.name" /></strong></label><br />
                        <td>
                            <form:input path="text" value=""/>            
                        </td>
                </td>
            </tr>
            <tr>
                <td><label class="alignCenter"  for="isbn">  
                        <strong><fmt:message key="label.book.isbn" /></strong></label><br />
                        <td>
                            <form:input path="isbn" value=""/>
                        </td>
            </tr>
            <tr>
                <td><label class="alignCenter"  for="author">  
                            <strong><fmt:message key="label.book.author" /></strong></label><br />
                            <td>
                                <form:input path="author" value=""/>
                            </td>

            <tr/>
            <tr>
                <td><label class="alignCenter"  for="publisherId">  
                            <strong><fmt:message key="label.book.publisherId" /></strong></label><br />
                            <td>
                                <form:input path="publisherId" value=""/>
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