<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    


<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View codes</title>
        
        <html:base/>
    </head>
<form action="menu"  id="TheForm" method="post">
    <spring:nestedPath path="menu">
        <table>                     
            <h2><fmt:message key="label.notification"/></h2>
            ${informationMessage}
            ${errorMessage}
            <hr/>
            <c:forEach var="thisProgram" items="${programs}"
                       varStatus="loopCounter">
                <tr>
                    <td>
                        <c:if test="${thisProgram.programAccountId == 2}"><b></c:if>
                            ${thisProgram.programName}
                            <c:if test="${thisProgram.programAccountId == 2}"></b></c:if>
                        </td>
                    </tr>

                   

            </c:forEach>
            <tr>
                <td>
                    <hr/>
                </td>
            </tr>



            <tr>
                <td>        <input type="submit" id="TheButton" name="action" value="Add Program">
                </td>
            </tr>
        </table>
    </spring:nestedPath>
</form>