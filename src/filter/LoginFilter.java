package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import javax.servlet.FilterChain;


//@WebFilter("/")
public class LoginFilter implements Filter {
    private FilterConfig config;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        System.out.println("进入filter");
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        HttpSession session = request.getSession();
        if (request.getRequestURI().endsWith("newlogin.html")){
            chain.doFilter(req,resp);
            System.out.println("new login --放过");
            return;
        }


        //从session里取的用户名信息
        String username = (String) session.getAttribute("username");
        System.out.println("username:"+username);

        //判断如果没有取到用户信息,就跳转到登陆页面
        if (username == null) {
            //跳转到登陆页面
            response.sendRedirect("/newlogin.html");
            return;
        }
        else {
            //已经登陆,继续此次请求
            chain.doFilter(req,resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
