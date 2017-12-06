package controller;

import DAO.impl.StudentDaoImpl;
import bean.Score;
import bean.SingleMessage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SingleMessageServlet")
public class SingleMessageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        Integer sid=Integer.parseInt(request.getParameter("sid"));

        System.err.println(sid);
        List<SingleMessage> Singlemess = new StudentDaoImpl().listSinglemess(sid);
        for(SingleMessage singlemess:Singlemess) System.out.println(singlemess.getSname());;
        request.getSession().setAttribute("Singlemess",Singlemess);
        request.getRequestDispatcher("singlemessage.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
