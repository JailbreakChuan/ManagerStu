package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import bean.Student;
import DAO.impl.StudentDaoImpl;

@WebServlet("/StudentAddServlet")
public class StudentAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Student student = new Student();
        student.setSid(Integer.parseInt(request.getParameter("Sid")));
        student.setSname(request.getParameter("Sname"));
        student.setSclass(Integer.parseInt(request.getParameter("Sclass")));
        student.setScollege(request.getParameter("Scollege"));
        student.setSage(Integer.parseInt(request.getParameter("Sage")));
        student.setSaddress(request.getParameter("Saddress"));

//        System.out.println(student+"111111");
        new StudentDaoImpl().add(student);

        response.sendRedirect("StudentListServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
