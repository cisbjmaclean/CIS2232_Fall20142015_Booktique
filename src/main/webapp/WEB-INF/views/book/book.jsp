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

                    document.forms[0].action = "book?delete=" + test;
                    document.forms[0].submit();
                }

            }
        </script>

        <html:base/>
    </head>
    <form action="menu" id="TheForm" method="post">
        <spring:nestedPath path="menu">
            <table>
                <h2><fmt:message key="label.book"/></h2>
                    ${informationMessage}
                    ${errorMessage}
                <hr/>
                <tr>
                    <td><input type="submit" id="TheButton" name="action" value="Add Book">
                    </td>
                </tr>
                <tr>
                    <th><strong><fmt:message key="label.book.name"/></strong></th>
                    <th><strong><fmt:message key="label.book.isbn"/></strong></th>
                    <th><strong><fmt:message key="label.book.author"/></strong></th>
                    <th><strong><fmt:message key="label.book.publisherId"/></strong></th>
                </tr>
                <c:forEach var="thisBook" items="${books}"
                           varStatus="loopCounter">
                    <tr>
                        
                                <td>${thisBook.text}</td>
                                <td>${thisBook.isbn}</td>
                                <td>${thisBook.author}</td>
                                <td>${thisBook.publisherId}</td>
                      <td>
                            <input type="button"
                                   onclick="deleteBook(${thisBook.isbn}, '${thisBook.text}')"
                                   value='<fmt:message key="label.delete"/>'>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </spring:nestedPath>
    </form>