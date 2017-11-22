<%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/10
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>学生信息列表</title>
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
<form method="post" action="/SingleMessageServlet">
    <table style="width:500px; margin:44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>
        <tr>
        <td><input type="submit" value="请输入您的学号" ></td>
        <td><input type="text" name="sid" ></td>
        </tr>
    </table>
</form>
<table style="width:500px; margin:44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>

    <tr>
        <th>Sid</th>
        <th>Sname</th>
        <th>Sclass</th>
        <th>Scollege</th>
        <th>Sage</th>
        <th>Saddress</th>

        <th>操作一</th>
        <th>操作二</th>
        <%--<th>操作三</th>--%>

    </tr>
    <c:forEach items="${students}" var="student" varStatus="st">
        <tr>
            <td>${student.getSid()}</td>
            <td>${student.getSname()}</td>
            <td>${student.getSclass()}</td>
            <td>${student.getScollege()}</td>
            <td>${student.getSage()}</td>
            <td>${student.getSaddress()}</td>

            <td><a href="StudentEditServlet?Sid=${student.getSid()}">修改</a></td>
            <td><a href="StudentDeleteServlet?Sid=${student.getSid()}">删除</a></td>
            <%--<td><a href="">添加</a></td>--%>
        </tr>
    </c:forEach>
</table>
<center>

    <a href="addstudent.jsp" align="center">添加学生信息</a><br>
    <a href="addscore.jsp" align="center">添加学生成绩</a><br>
    <a href="/ScoreServlet" align="center">查询总例成绩</a><br>

  <%--<form method="post" action="/SingleMessageServlet">--%>
      <%--<input type="submit" value="请输入您的学号" >--%>
      <%--<input type="text" name="sid" height="15px">--%>
  <%--</form>--%>
    <%--<a href="/SingleMessageServlet" align="center">查询单例</a>--%>


</center>

</body>
</html>
