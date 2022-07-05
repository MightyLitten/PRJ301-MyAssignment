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
        <link href="js/weekCalculate.js" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    </head>
    <body>
        <table class="table table-bordered">
            <thead class="table-primary">
                <tr>
                    <th scope="col" rowspan="2" class="col-md-2">
                        Year 
                        <select>
                            <option>2022</option>
                        </select> <br/>
                        Week 
                        <select>
                            <c:forEach items="${requestScope.weeks}" var="w" varStatus="loop">
                                <option value="${loop.index}" <c:if test="${loop.index eq requestScope.currentWeek-1}">selected="selected"</c:if>>${w}</option>
                            </c:forEach>
                        </select>
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
                        <td>-</td>
                        <td>
                            <a href="Demo_StudentList.html">PRJ301</a><br/>
                            at BE-213 <br/>
                            <a class="text-success">(attended)</a><br/>
                            <a class="text-white bg-success">(<fmt:formatDate type="time" timeStyle="short" value="${sl.start}" />-<fmt:formatDate type="time" timeStyle="short" value="${sl.end}" />)</a>
                        </td>
                        <td>-</td>
                        <td><a href="Demo_StudentList.html">PRJ301</a><br/>
                            at BE-213 <br/>
                            <a class="text-danger">(not yet)</a><br/>
                            <a class="text-white bg-success">(7:30-9:00)</a></td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
