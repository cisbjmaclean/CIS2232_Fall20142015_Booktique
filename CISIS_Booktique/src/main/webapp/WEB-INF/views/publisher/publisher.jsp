<%-- 
    Document   : publisher
    Created on : 7-Dec-2014, 7:07:17 PM
    Author     : Nathan Ryan
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    


<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publishers</title>
        
         <script type="text/javascript">
        function deletePublisher(test, description) {
            var r = confirm("<fmt:message key="label.confirm.delete.notification"/> (" + description + ")?");
            if (r == true) {
                //var s = document.getElementById('action_id');
                //s.value = test;
//                document.getElementById('TheForm').action = "notification?delete=" + test";
//                document.getElementById('TheForm').submit();

                document.forms[0].action = "publisher?delete=" + test;
                document.forms[0].submit();
            }

        }
    </script> 
        
        <html:base/>
    </head>
<form action="menu"  id="TheForm" method="post">
    <spring:nestedPath path="menu">
        <table>                     
            <h2><fmt:message key="label.publisher"/></h2>
            ${informationMessage}
            ${errorMessage}
            <hr/>
            <c:forEach var="thisPublisher" items="${publishers}"
                       varStatus="loopCounter">
                <tr>
                    <td>
                        <c:if test="${thisPublisher.publisherId == 2}"><b></c:if>
                            <p><strong><fmt:message key="label.publisher.name" /></strong>
                            ${thisPublisher.name}
                            </br>
                            <strong><fmt:message key="label.publisher.id" /></strong>
                            ${thisPublisher.publisherId}
                            </br>
                            <strong><fmt:message key="label.publisher.address"/></strong>
                            ${thisPublisher.returnAddress}
                            </br>
                            <strong><fmt:message key="label.publisher.email"/></strong>
                            ${thisPublisher.email}
                            </br>
                            <strong><fmt:message key="label.publisher.phone"/></strong>
                            ${thisPublisher.phone}
                            </br>
                            <strong><fmt:message key="label.publisher.fax"/></strong>
                            ${thisPublisher.fax}
                            </br>
                            <strong><fmt:message key="label.publisher.notes"/></strong>
                            ${thisPublisher.notes}
                            </p>
                            <c:if test="${thisPublisher.publisherId == 2}"></b></c:if>
                        </td>
                    </tr>
                    <tr align="center">
                        <td>
                            <input type="button" 
                                   onclick="deletePublisher(${thisPublisher.publisherId}, '${thisPublisher.name}')" value='<fmt:message key="label.delete"/>'>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td>
                    <hr/>
                </td>
            </tr>
            <tr>
                <td>        <input type="submit" id="TheButton" name="action" value="Add Publisher">
                </td>
            </tr>
        </table>
    </spring:nestedPath>
</form>