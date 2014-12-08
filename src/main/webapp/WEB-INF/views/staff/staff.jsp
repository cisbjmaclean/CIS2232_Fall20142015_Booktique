<%-- 
    Document   : book
    Created on : 7-Dec-2014, 7:05:09 PM
    Author     : Nathan Ryan
--%>
<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books</title>

        <script type="text/javascript">
            function deleteBook(test, description) {
                var r = confirm("<fmt:message key="label.confirm.delete.notification"/> (" + description + ")?");
                if (r == true) {
                    //var s = document.getElementById('action_id');
                    //s.value = test;
//                document.getElementById('TheForm').action = "notification?delete=" + test";
//                document.getElementById('TheForm').submit();

                    document.forms[0].action = "staff?delete=" + test;
                    document.forms[0].submit();
                }

            }
        </script>

        <html:base/>
    </head>
    <form action="menu" id="staffForm" method="post">
        <spring:nestedPath path="menu">
            <table>
                <h2><fmt:message key="label.staff"/></h2>
                <hr>
                    ${informationMessage}
                    ${errorMessage}
                <c:forEach var="staff" items="${staffMembers}"
                           varStatus="loopCounter">
                    <tr>
                        <td>
                            <%--<c:if test="${thisBook.isbn == 2}"><b></c:if>--%>
                            <p><strong><fmt:message key="label.staff.fullname"/></strong>
                                    ${staff.firstName} ${staff.lastName}
                                </br>
                                <strong><fmt:message key="label.staff.email"/></strong>
                                    ${staff.email}
                                </br>
                                <strong><fmt:message key="label.staff.phone"/></strong>
                                    ${staff.phoneNumber}
                            </p>
                            <%--<c:if test="${thisBook.isbn == 2}"></b></c:if>--%>
                        </td>
                    </tr>
                    <%--<tr align="center">--%>
                    <%--<td>--%>
                    <%--<input type="button"--%>
                    <%--onclick="deleteBook(${thisBook.isbn}, '${thisBook.text}')"--%>
                    <%--value='<fmt:message key="label.delete"/>'>--%>
                    <%--</td>--%>
                    <%--</tr>--%>
                </c:forEach>
                <tr>
                    <td>
                        <hr/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" id="TheButton" name="action" value="Add Staff">
                    </td>
                </tr>
            </table>
        </spring:nestedPath>
    </form>