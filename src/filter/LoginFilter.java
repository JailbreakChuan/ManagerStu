package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter")
public class LoginFilter implements Filter {
    private FilterConfig config;

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession();

        String noLoginPaths = config.getInitParameter("noLoginPaths");

        String charset = config.getInitParameter("charset");
        if(charset==null){
            charset = "UTF-8";
        }
        request.setCharacterEncoding(charset);

        if(noLoginPaths!=null){
            String[] strArray = noLoginPaths.split(";");
            for (int i = 0; i < strArray.length; i++) {

                if(strArray[i]==null || "".equals(strArray[i]))continue;

                if(request.getRequestURI().indexOf(strArray[i])!=-1 ){
                    chain.doFilter(req, resp);
                    return;
                }
            }

        }




        if(session.getAttribute("username")!=null){
            chain.doFilter(req, resp);
        }else{
            response.sendRedirect("login.htm");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
