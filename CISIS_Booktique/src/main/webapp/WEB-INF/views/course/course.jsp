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
        function deleteCourse(test, description) {
            var r = confirm("<fmt:message key="label.confirm.delete.notification"/> (" + description + ")?");
            if (r == true) {
                //var s = document.getElementById('action_id');
                //s.value = test;
//                document.getElementById('TheForm').action = "notification?delete=" + test";
//                document.getElementById('TheForm').submit();

                document.forms[0].action = "course?delete=" + test;
                document.forms[0].submit();
            }

        }
    </script> 
        
        <html:base/>
    </head>
<form action="menu"  id="TheForm" method="post">
    <spring:nestedPath path="menu">
        <table>                     
            <h2><fmt:message key="label.course"/></h2>
            ${informationMessage}
            ${errorMessage}
            <hr/>
            <c:forEach var="thisCourse" items="${courses}"
                       varStatus="loopCounter">
                <tr>
                    <td>
                        <c:if test="${thisCourse.courseId == 2}"><b></c:if>
                            <p><strong><fmt:message key="label.course.name" /></strong>
                            ${thisCourse.courseName}
                            </br>
                            <strong><fmt:message key="label.course.id" /></strong>
                            ${thisCourse.courseId}</p>
                            <c:if test="${thisCourse.courseId == 2}"></b></c:if>
                        </td>
                    </tr>
                    <tr align="center">
                        <td>
                            <input type="button" 
                                   onclick="deleteCourse(${thisCourse.courseId}, '${thisCourse.courseName}')" value='<fmt:message key="label.delete"/>'>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td>
                    <hr/>
                </td>
            </tr>
            <tr>
                <td>        <input type="submit" id="TheButton" name="action" value="Add Course">
                </td>
            </tr>
        </table>
    </spring:nestedPath>
</form>