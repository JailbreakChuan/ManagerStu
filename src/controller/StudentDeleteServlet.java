package controller;

import DAO.impl.StudentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/StudentDeleteServlet")
public class StudentDeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Sid = Integer.parseInt(request.getParameter("Sid"));

//        StudentDaoImpl studentDaoImpl = new StudentDaoImpl();
//        studentDaoImpl.delete(Sid);

        new StudentDaoImpl().delete(Sid);

        response.sendRedirect("StudentListServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
