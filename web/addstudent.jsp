<%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/14
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生信息</title>
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
<form action="StudentAddServlet" method="post">
    <table >
        <tr>
            <td>学号：</td>
            <td><input type="text" name="Sid"> <br></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input type="text" name="Sname"> <br></td>
        </tr>
        <tr>
            <td>班级：</td>
            <td><input type="text" name="Sclass"> <br></td>
        </tr>
        <tr>
            <td>系别：</td>
            <td><input type="text" name="Scollege"> <br></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="Sage"> <br></td>
        </tr>
        <tr>
            <td>地址：</td>
            <td><input type="text" name="Saddress"> <br></td>
        </tr>
        <tr>
            <td><input type="submit" value="增加学生信息 "></td>
            <th><input type="reset" value="重置"></th>
            <th><a href="/StudentListServlet" align="center">返回</a></th>
        </tr>
    </table>
</form>


</center>
</body>
</html>
