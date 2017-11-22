<%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/20
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生成绩</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet">
    <style>
        td{
            text-align:center;
        }
    </style>
</head>
<body>
<center>
<form action="addScoreServlet" method="post">
    <table>
        <tr>
            <td>学号：</td>
            <td><input type="text" name="Sid"> <br></td>
        </tr>
        <tr>
            <td>课程编号：</td>
            <td><input type="text" name="Cid"> <br></td>
        </tr>
        <tr>
            <td>课程名称：</td>
            <td><input type="text" name="Cname"> <br></td>
        </tr>
        <tr>
            <td>课程分数：</td>
            <td><input type="text" name="Score"> <br></td>
        </tr>
        <tr>
            <td><input type="submit" value="添加学生成绩 "></td>
            <th><input type="reset" value="重置"></th>
            <th><a href="/StudentListServlet" align="center">返回</a></th>
        </tr>
    </table>
</form>
</center>
</body>
</html>
