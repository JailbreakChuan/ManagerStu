package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodingFilter implements Filter {
    private FilterConfig config;
    private String encode ="UTF-8";
    public void destroy() {
        System.out.println("过滤器销毁了");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        req.setCharacterEncoding(encode);
        resp.setContentType("text/html;charset="+encode);
        chain.doFilter(req,resp);//设计模式，责任链模式

    }

    public void init(FilterConfig config) throws ServletException {
        encode = config.getInitParameter("encoding");
        System.out.println("过滤器初始化了");
    }

}
