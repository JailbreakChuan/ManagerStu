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


</head>
<body>
<div class="container">
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="/StudentListServlet">Back</a>
                <div class="nav-collapse">
                    <ul class="nav">
                        <li class="dropdown">
                            <a href="help.htm" class="dropdown-toggle" data-toggle="dropdown">Tours <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="help.htm">Introduction Tour</a>
                                </li>

                                <li>
                                    <a href="help.htm">Project Organisation</a>
                                </li>
                                <li>
                                    <a href="help.htm">Task Assignment</a>
                                </li>
                                <li>
                                    <a href="help.htm">Access Permissions</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li class="nav-header">
                                    Files
                                </li>
                                <li>
                                    <a href="help.htm">How to upload multiple files</a>
                                </li>
                                <li>
                                    <a href="help.htm">Using file version</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="index.html">Dashboard</a>
                        </li>

                        <li>
                            <a href="help.htm">请输入您的学号:</a>
                        </li>

                    </ul>
                    <form class="navbar-search pull-left" method="post" action="/SingleMessageServlet">
                        <input type="text" style="height: 28px" class="search-query span3" placeholder="Search" name="sid"/>
                    </form>
                    <ul class="nav pull-right">
                        <li>
                            <a href="profile.htm">@username</a>
                        </li>
                        <li>
                            <a href="newlogin.html">Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="span3">
            <div class="well" style="padding: 8px 0;">
                <ul class="nav nav-list">
                    <li class="nav-header">
                        Function
                    </li>
                    <li class="active">
                        <a href="addstudent.jsp"><i class="icon-cog"></i> 添加学生信息</a>
                    </li>
                    <li class="active">
                        <a href="addscore.jsp"><i class="icon-cog"></i> 添加学生成绩</a>
                    </li>
                    <li class="active">
                        <a href="/ScoreServlet" ><i class="icon-white icon-list-alt"></i> 成绩单</a>
                    </li>
                    <li>
                        <a href="messages.htm"><i class="icon-envelope"></i> 消息提醒</a>
                    </li>
                    <li>
                        <a href="files.htm"><i class="icon-file"></i> 文件处理</a>
                    </li>
                    <li >
                        <a href="activity.htm"><i class="icon-check"></i> 活动安排</a>
                    </li>

                    <li class="nav-header">
                        Your Account
                    </li>
                    <li>
                        <a href="profile.htm"><i class="icon-user"></i> 个人简介</a>
                    </li>
                    <li>
                        <a href="settings.htm"><i class="icon-cog"></i> 设置</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="help.htm"><i class="icon-info-sign"></i> 帮助</a>
                    </li>
                    <li class="nav-header">
                        Bonus Templates
                    </li>
                    <li>
                        <a href="gallery.htm"><i class="icon-picture"></i> Gallery</a>
                    </li>
                    <li>
                        <a href="blank.htm"><i class="icon-stop"></i> Blank Slate</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="span9">
            <h2>
                学生成绩管理系统
            </h2>


            <form action="StudentUpadteServlet" method="post">
                <table align="center" class="table table-bordered table-striped">
                    <tr>
                        <td style="text-align: right">
                            学号：
                        </td>
                        <td >
                            <input  type="text" name="Sid" value="${student.getSid()}"> <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            姓名：
                        </td>
                        <td>
                            <input  type="text" name="Sname" value="${student.getSname()}"> <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            班级：
                        </td>
                        <td >
                            <input  type="text" name="Sclass" value="${student.getSclass()}"> <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            系别：
                        </td>
                        <td >
                            <input  type="text" name="Scollege" value="${student.getScollege()}"> <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            年龄：
                        </td>
                        <td >
                            <input  type="text" name="Sage" value="${student.getSage()}"> <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            地址：
                        </td>
                        <td >
                            <input  type="text" name="Saddress" value="${student.getSaddress()}"> <br>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <input type="hidden" name="Sid" value="${student.getSid()}">
                            <input type="submit" value="更新">
                        </td>
                        <th><input type="reset" value="重置"></th>
                    </tr>

                </table>
            </form>
        </div>
    </div>


</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/site.js"></script>

<%--<form action="StudentUpadteServlet" method="post">--%>
    <%--<table align="center">--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--学号：--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="Sid" value="${student.getSid()}"> <br>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--姓名：--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="Sname" value="${student.getSname()}"> <br>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--班级：--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="Sclass" value="${student.getSclass()}"> <br>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--系别：--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="Scollege" value="${student.getScollege()}"> <br>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--年龄：--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="Sage" value="${student.getSage()}"> <br>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--地址：--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="Saddress" value="${student.getSaddress()}"> <br>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td  >--%>
                <%--<input type="hidden" name="Sid" value="${student.getSid()}">--%>
                <%--<input type="submit" value="更新">--%>
            <%--</td>--%>
            <%--<th><input type="reset" value="重置"></th>--%>
        <%--</tr>--%>

    <%--</table>--%>
<%--</form>--%>
</body>
</html>
