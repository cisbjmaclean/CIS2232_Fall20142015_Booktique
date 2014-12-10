<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    


<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programs</title>
        
         <script type="text/javascript">
        function deleteProgram(test, description) {
            var r = confirm("<fmt:message key="label.confirm.delete.notification"/> (" + description + ")?");
            if (r == true) {
                //var s = document.getElementById('action_id');
                //s.value = test;
//                document.getElementById('TheForm').action = "notification?delete=" + test";
//                document.getElementById('TheForm').submit();

                document.forms[0].action = "program?delete=" + test;
                document.forms[0].submit();
            }

        }
    </script> 
        
        <html:base/>
    </head>
<form action="menu"  id="TheForm" method="post">
    <spring:nestedPath path="menu">
        <table>                     
            <h2><fmt:message key="label.program"/></h2>
            ${informationMessage}
            ${errorMessage}
            <hr />
             <tr>
                <td>        <input type="submit" id="TheButton" name="action" value="Add Program">
                </td>
            </tr>
             <tr>   
                    <th><strong><fmt:message key="label.program.name" /></strong></th>
                    <th><strong><fmt:message key="label.program.account" /></strong></th>            
                    </tr>
            <c:forEach var="thisProgram" items="${programs}"
                       varStatus="loopCounter">
                    <tr>
                        <td>                          
                            ${thisProgram.programName}
                        </td>
                        <td>
                            ${thisProgram.programAccountId}
                        </td>
                        <td>
                            <input type="button" 
                                   onclick="deleteProgram(${thisProgram.programAccountId}, '${thisProgram.programName}')" value='<fmt:message key="label.delete"/>'>
                    </td>
                    </tr>
            </c:forEach>
        </table>
    </spring:nestedPath>
</form>
    <hr/>