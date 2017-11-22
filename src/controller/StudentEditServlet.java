package controller;

import DAO.impl.StudentDaoImpl;
import bean.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StudentEditServlet")
public class StudentEditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Sid = Integer.parseInt(request.getParameter("Sid"));
        Student student = new StudentDaoImpl().get(Sid);
        System.out.println(student.toString());
        request.setAttribute("student",student);
        request.getRequestDispatcher("editstudent.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
