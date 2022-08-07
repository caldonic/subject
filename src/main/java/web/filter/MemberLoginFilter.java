package web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginFilter
 */
@WebFilter("/*")

public class MemberLoginFilter implements Filter {
// private FilterConfig config;
//
// public void init(FilterConfig config) {
//  this.config = config;
// }
//
// public void destroy() {
//  config = null;
// }

 @Override
 public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
   throws ServletException, IOException {

  HttpServletRequest req = (HttpServletRequest) request;
  HttpServletResponse res = (HttpServletResponse) response;
  String[] urls = { "/css/", "/js/", "/img/", "/login", "/register-member", "/register-seller", "/forget", "/checkVerification",
    "/changePassword", "/index.jsp", "/logout" };

  String url = req.getRequestURL().toString();
//  System.out.println(url);
  for (String u : urls) {
   if (url.contains(u)) {
    chain.doFilter(request, response);
    return;
   }
  }

  // 【取得 session】
  HttpSession session = req.getSession();
  // 【從 session 判斷此user是否登入過】
  Object user = session.getAttribute("memID");
  if (user != null) {
   // 放行
   chain.doFilter(request, response);
  } else {
   session.setAttribute("location", req.getRequestURI());
   res.sendRedirect(req.getContextPath() + "/login.html");
   return;
  }
 }

}