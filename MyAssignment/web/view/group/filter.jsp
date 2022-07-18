<%-- 
    Document   : WeeklySchedule
    Created on : 05-Jul-2022, 11:51:58
    Author     : apc
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Weekly Schedule</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../fontawesome-free/css/all.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <form action="filter" method="POST">
            Group 
            <select name="group">
                <c:forEach items="${requestScope.groups}" var="g">
                    <option value="${g.gid}" <c:if test="${g.gid eq requestScope.gid}">selected="selected"</c:if>>${g.gname}</option>
                </c:forEach>
            </select>
            <input type="submit" value="View">
        </form>
        <div class="container">
            <c:if test="${!requestScope.students.isEmpty()}">
                <table class="table-bordered">
                    <tr>
                        <th>Student\Session</th>
                            <c:forEach items="${requestScope.sessions}" var="se">
                            <th>${se.sename}</th>
                            </c:forEach>
                    </tr>
                    <c:forEach items="${requestScope.students}" var="s">
                        <tr>
                            <td>${s.sname}</td>
                            <c:forEach items="${requestScope.sessions}" var="se">
                                <td class="text-center">
                                    <c:if test="${se.attendances.isEmpty()}"><i class="fa-solid fa-minus"></i></c:if>
                                    <c:if test="${!se.attendances.isEmpty()}">
                                        <c:forEach items="${se.attendances}" var="a">
                                            <c:if test="${a.student.sid eq s.sid}">
                                                <c:if test="${a.status eq 'attended'}"><i class="fa-solid fa-check text-success"></i></c:if>
                                                <c:if test="${a.status ne 'attended'}"><i class="fa-solid fa-x text-danger"></i></i></c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </div>
    </body>
</html>
