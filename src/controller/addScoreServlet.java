package controller;

import DAO.impl.StudentDaoImpl;
import bean.Student;
import bean.Score;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addScoreServlet")
public class addScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Student student = new Student();
        student.setSid(Integer.parseInt(request.getParameter("Sid")));
        student.setCid(Integer.parseInt(request.getParameter("Cid")));
        student.setCname(request.getParameter("Cname"));
        student.setScore(Integer.parseInt(request.getParameter("Score")));

//        System.out.println(student+"111111");
        new StudentDaoImpl().adds(student);

        response.sendRedirect("StudentListServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
