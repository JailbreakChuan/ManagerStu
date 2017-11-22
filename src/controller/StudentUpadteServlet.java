package controller;

import DAO.impl.StudentDaoImpl;
import bean.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StudentUpadteServlet")
public class StudentUpadteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        Student student = new Student();
        student.setSid(Integer.parseInt((request.getParameter("Sid"))));
        student.setSname(request.getParameter("Sname"));
        student.setSclass(Integer.parseInt(request.getParameter("Sclass")));
        student.setScollege(request.getParameter("Scollege"));
        student.setSage(Integer.parseInt(request.getParameter("Sage")));
        student.setSaddress(request.getParameter("Saddress"));
        new StudentDaoImpl().update(student);

        response.sendRedirect("StudentListServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
