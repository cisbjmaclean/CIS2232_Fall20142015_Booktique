<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form action="program" method="post">
    <spring:nestedPath path="program">
        <h2><fmt:message key="label.program"/></h2>
        <table>                

            <tr>
                <td><label class="alignCenter"  for="programAccountId">
                        <strong><fmt:message key="label.program.account" /></strong></label><br />
                        <td>
                            <form:input path="programAccountId" value=""/>            
                        </td>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="alignCenter"  for="programName">  
                        <strong><fmt:message key="label.program.name" /></strong></label><br />
                        <td>
                            <form:input path="programName" value=""/>
                        </td>
            </tr>
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