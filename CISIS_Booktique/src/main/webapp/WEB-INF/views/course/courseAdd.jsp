<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form action="course" method="post">
    <spring:nestedPath path="course">
        <h2><fmt:message key="label.course"/></h2>
        <table>                

            <tr>
                <td><label class="alignCenter"  for="courseId">
                        <strong><fmt:message key="label.course.id" /></strong></label><br />
                        <td>
                            <form:input path="courseId" value=""/>            
                        </td>
                </td>
            </tr>
            <tr>
                <td><label class="alignCenter"  for="courseName">  
                        <strong><fmt:message key="label.course.name" /></strong></label><br />
                        <td>
                            <form:input path="courseName" value=""/>
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