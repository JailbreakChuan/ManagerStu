package controller;

import bean.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username+","+password);

		//判断用户名和密码是否合法
		if(username.equals("admin")&&password.equals("admin"))
		{
			request.getSession().setAttribute("username",username);
			response.sendRedirect("StudentListServlet");

		}
		else
		{
			response.sendRedirect("loginfailure.html");
		}

}
}
