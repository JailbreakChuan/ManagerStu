<%--
  Created by IntelliJ IDEA.
  User: Liu ShuTao
  Date: 2017/11/10
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" class="ie6 ielt7 ielt8 ielt9">
<head>
    <title>学生信息列表</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<body>
<div class="container">
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a> <a class="brand" href="#">Welcome</a>
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
                        <%--<li>--%>
                            <%--<a href="settings.htm">Account Settings</a>--%>
                        <%--</li>--%>
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
                        <a href="/ScoreServlet" ><i class="icon-white icon-list-alt"></i>成绩单</a>
                    </li>
                    <li>
                        <a href="messages.htm"><i class="icon-envelope"></i>消息提醒</a>
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

            <%--<form method="post" action="/SingleMessageServlet">--%>
                <%--&lt;%&ndash;<table style="width:500px; margin:44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>&ndash;%&gt;--%>

                <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
            <%--</form>--%>
            <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th style="text-align: center">Sid</th>
                    <th style="text-align: center">Sname</th>
                    <th style="text-align: center">Sclass</th>
                    <th style="text-align: center">Scollege</th>
                    <th style="text-align: center">Sage</th>
                    <th style="text-align: center">Saddress</th>

                    <th style="text-align: center">Action1</th>
                    <th style="text-align: center">Action2</th>
                    <%--<th>操作三</th>--%>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${students}" var="student" varStatus="st">
                    <tr>
                        <td style="text-align: center">${student.getSid()}</td>
                        <td style="text-align: center">${student.getSname()}</td>
                        <td style="text-align: center">${student.getSclass()}</td>
                        <td style="text-align: center">${student.getScollege()}</td>
                        <td style="text-align: center">${student.getSage()}</td>
                        <td style="text-align: center">${student.getSaddress()}</td>

                        <td style="text-align: center"><a href="StudentEditServlet?Sid=${student.getSid()}">Edit</a></td>
                        <td style="text-align: center"><a href="StudentDeleteServlet?Sid=${student.getSid()}">Delete</a></td>
                            <%--<td><a href="">添加</a></td>--%>
                    </tr>
                </c:forEach>
                <%--<tr>--%>
                    <%--<form method="post" action="/SingleMessageServlet">--%>
                        <%--&lt;%&ndash;<td><input type="submit" value="请输入您的学号" ></td>&ndash;%&gt;--%>
                        <%--<td><input type="text" name="sid" ></td>--%>
                    <%--</form>--%>
                    <%--<td colspan="2"><a href="addstudent.jsp" align="center">添加学生信息</a><br></td>--%>
                    <%--<td colspan="2"><a href="addscore.jsp" align="center">添加学生成绩</a><br></td>--%>
                    <%--<td colspan="2"><a href="/ScoreServlet" align="center">查询总例成绩</a><br></td>--%>
                <%--</tr>--%>
            </tbody>
            </table>
            <div class="pagination">
                <ul>
                    <li class="disabled">
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%--<form method="post" action="/SingleMessageServlet">--%>
    <%--&lt;%&ndash;<table style="width:500px; margin:44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>&ndash;%&gt;--%>

    <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
<%--</form>--%>
<%--<table style="width:500px; margin:44px auto" class="table table-striped table-bordered table-hover  table-condensed" align='center' border='1' cellspacing='0'>--%>
    <%--<tr>--%>
        <%--<form method="post" action="/SingleMessageServlet">--%>
        <%--<td><input type="submit" value="请输入您的学号" ></td>--%>
        <%--<td><input type="text" name="sid" ></td>--%>
        <%--</form>--%>
        <%--<td colspan="2"><a href="addstudent.jsp" align="center">添加学生信息</a><br></td>--%>
        <%--<td colspan="2"><a href="addscore.jsp" align="center">添加学生成绩</a><br></td>--%>
        <%--<td colspan="2"><a href="/ScoreServlet" align="center">查询总例成绩</a><br></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
        <%--<th>Sid</th>--%>
        <%--<th>Sname</th>--%>
        <%--<th>Sclass</th>--%>
        <%--<th>Scollege</th>--%>
        <%--<th>Sage</th>--%>
        <%--<th>Saddress</th>--%>

        <%--<th>Action1</th>--%>
        <%--<th>Action2</th>--%>
        <%--&lt;%&ndash;<th>操作三</th>&ndash;%&gt;--%>

    <%--</tr>--%>
    <%--<c:forEach items="${students}" var="student" varStatus="st">--%>
        <%--<tr>--%>
            <%--<td>${student.getSid()}</td>--%>
            <%--<td>${student.getSname()}</td>--%>
            <%--<td>${student.getSclass()}</td>--%>
            <%--<td>${student.getScollege()}</td>--%>
            <%--<td>${student.getSage()}</td>--%>
            <%--<td>${student.getSaddress()}</td>--%>

            <%--<td><a href="StudentEditServlet?Sid=${student.getSid()}">修改</a></td>--%>
            <%--<td><a href="StudentDeleteServlet?Sid=${student.getSid()}">删除</a></td>--%>
            <%--&lt;%&ndash;<td><a href="">添加</a></td>&ndash;%&gt;--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
<%--</table>--%>
<%--<center>--%>

    <%--<a href="addstudent.jsp" align="center">添加学生信息</a><br>--%>
    <%--<a href="addscore.jsp" align="center">添加学生成绩</a><br>--%>
    <%--<a href="/ScoreServlet" align="center">查询总例成绩</a><br>--%>

  <%--<form method="post" action="/SingleMessageServlet">--%>
      <%--<input type="submit" value="请输入您的学号" >--%>
      <%--<input type="text" name="sid" height="15px">--%>
  <%--</form>--%>
    <%--<a href="/SingleMessageServlet" align="center">查询单例</a>--%>


</center>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/site.js"></script>
</body>
</html>
