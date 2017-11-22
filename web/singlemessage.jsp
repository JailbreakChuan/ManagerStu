<%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/19
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>singlemessage</title>
    <style>
        td{
            text-align:center;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet">
</head>
<body>
<table style="width:500px; margin:44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>
    <tr>
    <th>Sid</th>
    <th>Sname</th>
    <th>Sclass</th>
    <th>Scollege</th>
    <th>Sage</th>
    <th>Saddress</th>
    <th>Cname</th>
    <th>Score</th>
    </tr>
    <c:forEach items="${sessionScope.Singlemess}" var="singleMessage">
        <tr>
            <td>${singleMessage.getSid()}</td>
            <td>${singleMessage.getSname()}</td>
            <td>${singleMessage.getSclass()}</td>
            <td>${singleMessage.getScollege()}</td>
            <td>${singleMessage.getSage()}</td>
            <td>${singleMessage.getSaddress()}</td>
            <td>${singleMessage.getCname()}</td>
            <td>${singleMessage.getScore()}</td>
        </tr>
    </c:forEach>
    <tr >

        <td></td>
        <td colspan="8" align="center"><a href="/StudentListServlet" align="center">返回</a></td>

    </tr>
</table>

</body>
</html>
