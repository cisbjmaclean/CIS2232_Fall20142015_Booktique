<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form action="memberBioUpdate" method="post">
    <spring:nestedPath path="memberSquash">

        <table>                

            <tr><td><h3>New Administrator:</h3></td></tr>

            <tr>
                <td><form:hidden path="member.memberId"/>
            <label class="alignCenter" for="firstName">
                <strong><fmt:message key="label.first.name" /></strong></label>
                <form:input path="member.firstName" size="20" />
            </td>
            </tr>

            <tr>
                <td>
                    <label class="alignCenter"  for="lastName">
                        <strong><fmt:message key="label.last.name" /></strong></label>
                        <form:input path="member.lastName" size="20" />
                </td>
            </tr>

            <tr>
                <td>
                    <label class="alignCenter"  for="homePhone">
                        <strong><fmt:message key="label.home.phone" /></strong></label>
                        <form:input path="member.homePhone" size="10" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="alignCenter"  for="workPhone">
                        <strong><fmt:message key="label.work.phone" /></strong></label>
                        <form:input path="member.workPhone" size="10" />
                    <label class="alignCenter"  for="workPhoneExtension">
                        <strong><fmt:message key="label.work.phone.extension" /></strong></label>
                        <form:input path="member.workPhoneExtension" size="3" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="alignCenter"  for="emailAddress">
                        <strong><fmt:message key="label.email.address" /></strong></label>
                        <form:input path="member.emailAddress" size="25" />
                </td>
            </tr>

            <tr/>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value=<fmt:message key="label.save"/>
                </td>
            </tr>
        </table>
    </spring:nestedPath>
</form>
