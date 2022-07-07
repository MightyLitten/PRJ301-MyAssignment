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
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <table class="table table-bordered">
            <thead class="table-primary">
                <tr>
                    <th scope="col" rowspan="2" class="col-md-2">
                        <form action="schedule"method="POST">
                            Year 
                            <select name="year">
                                <option <c:if test="${requestScope.year eq requestScope.currentYear-1}">selected="selected"</c:if>>${requestScope.currentYear-1}</option>
                                <option <c:if test="${requestScope.year eq requestScope.currentYear}">selected="selected"</c:if>>${requestScope.currentYear}</option>
                                <option <c:if test="${requestScope.year eq requestScope.currentYear+1}">selected="selected"</c:if>>${requestScope.currentYear+1}</option>
                                </select> <br/>
                                Week 
                                <select name="week">
                                <c:forEach items="${requestScope.weeks}" var="w" varStatus="loop">
                                    <option value="${loop.index}" <c:if test="${loop.index eq requestScope.week}">selected="selected"</c:if>>${w}</option>
                                </c:forEach>
                            </select>
                        </form>
                    </th>
                    <th scope="col">Mon</th>
                    <th scope="col">Tue</th>
                    <th scope="col">Wed</th>
                    <th scope="col">Thu</th>
                    <th scope="col">Fri</th>
                    <th scope="col">Sat</th>
                    <th scope="col">Sun</th>
                </tr>
                <tr>
                    <c:forEach items="${requestScope.days}" var="d">
                        <th scope="col"><fmt:formatDate pattern = "dd/MM" value="${d}"/></th>
                        </c:forEach>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.slots}" var="sl">
                    <tr>
                        <th scope="row">${sl.slname}</th>
                            <c:forEach items="${requestScope.days}" var="d">
                            <td>
                                <c:forEach items="${requestScope.sessions}" var="se">
                                    <c:if test="${d eq se.applyDate and sl.slid eq se.slot.slid}">
                                        <a href="Demo_StudentList.html">${se.group.subject.sucode}</a><br/>
                                        at ${se.room.rname} <br/>
                                        <c:if test="${se.attendences.isEmpty()}"><a class="text-danger">(not yet)</a></c:if>
                                        <c:if test="${!se.attendences.isEmpty()}"><a class="text-success">(taken)</a></c:if><br/>
                                        <a class="text-white bg-success">(<fmt:formatDate type="time" timeStyle="short" value="${sl.start}" />-<fmt:formatDate type="time" timeStyle="short" value="${sl.end}" />)</a>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${requestScope.sessions.isEmpty()}">
                                    -
                                </c:if>
                            </td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
