package controller;

import DAO.impl.StudentDaoImpl;
import bean.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/StudentListServlet")
public class StudentListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        List<Student> students = new StudentDaoImpl().list();
        request.setAttribute("students",students);
        request.getRequestDispatcher("listStudent.jsp").forward(request,response);
//
//        StringBuffer sb = new StringBuffer();
//        sb.append("<table align='center' border='1' cellspacing='0'>\r\n");
//        sb.append("<tr>" +
//                "<th>学号</th>" +
//                "<th>姓名</th>" +
//                "<th>班级</th>" +
//                "<th>系别</th>" +
//                "<th>年龄</th>" +
//                "<th>地址</th>" +
//                "<th>修改</th>"+
//                "<th>删除</th>"+
//                "</tr>\r\n");
//
//        String trFormat = "<tr>" +
//                "<td>%d</td>" +
//                "<td>%s</td>" +
//                "<td>%d</td>" +
//                "<td>%s</td>" +
//                "<td>%d</td>" +
//                "<td>%s</td>" +
//                "<td><a href='StudentEditServlet?Sid=%d'>edit</a></td>"+
//                "<td><a href='StudentDeleteServlet?Sid=%d'>delete</a></td>"+
//                "</tr>\r\n";
//
//        for (Student student : students) {
//            String tr = String.format(trFormat, student.getSid(), student.getSname(),
//                    student.getSclass(), student.getScollege(),student.getSage(),
//                    student.getSaddress(),student.getSid(),student.getSid());
//            sb.append(tr);
//        }
//
//        sb.append("</table>");
//
//        response.getWriter().write(sb.toString());


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
