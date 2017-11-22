<%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/16
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>查询成绩</title>
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
        <th>Cname</th>
        <th>Score</th>
    </tr>
    <c:forEach items="${sessionScope.javascore}" var="score">
        <tr>
            <td>${score.getSid()}</td>
            <td>${score.getSname()}</td>
            <td>${score.getCname()}</td>
            <td>${score.getScore()}</td>
        </tr>
    </c:forEach>

    <tr >

        <td></td>
        <td colspan="4" align="center"><a href="/StudentListServlet" align="center">返回</a></td>

    </tr>



</table>
</body>
</html>
