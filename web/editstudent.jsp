<%@ page import="bean.Student" %><%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/14
  Time: 17:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>editstudent</title>
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
<form action="StudentUpadteServlet" method="post">
    <table align="center">
        <tr>
            <td>
                学号：
            </td>
            <td>
                <input type="text" name="Sid" value="${student.getSid()}"> <br>
            </td>
        </tr>
        <tr>
            <td>
                姓名：
            </td>
            <td>
                <input type="text" name="Sname" value="${student.getSname()}"> <br>
            </td>
        </tr>
        <tr>
            <td>
                班级：
            </td>
            <td>
                <input type="text" name="Sclass" value="${student.getSclass()}"> <br>
            </td>
        </tr>
        <tr>
            <td>
                系别：
            </td>
            <td>
                <input type="text" name="Scollege" value="${student.getScollege()}"> <br>
            </td>
        </tr>
        <tr>
            <td>
                年龄：
            </td>
            <td>
                <input type="text" name="Sage" value="${student.getSage()}"> <br>
            </td>
        </tr>
        <tr>
            <td>
                地址：
            </td>
            <td>
                <input type="text" name="Saddress" value="${student.getSaddress()}"> <br>
            </td>
        </tr>
        <tr>
            <td  >
                <input type="hidden" name="Sid" value="${student.getSid()}">
                <input type="submit" value="更新">
            </td>
            <th><input type="reset" value="重置"></th>
        </tr>

    </table>
</form>
</body>
</html>
