package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Login Page</title>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- jap -->\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row justify-content-center\">\r\n");
      out.write("                <div class=\"col-md-6\">\r\n");
      out.write("                    <div class=\"card mt-5\" >\r\n");
      out.write("                        <div class=\"card-header\">Login</div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <form method=\"POST\" action=\"loginController\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group row\">\r\n");
      out.write("                                    <label for=\"email\" class=\"col-md-4 col-form-label text-md-right\">E-Mail Address</label>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <input id=\"email\" type=\"email\" class=\"form-control \" name=\"email\"  required>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group row\">\r\n");
      out.write("                                    <label for=\"password\" class=\"col-md-4 col-form-label text-md-right\">Password</label>\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"col-md-6\">\r\n");
      out.write("                                        <input id=\"password\" type=\"password\" class=\"form-control\" name=\"password\" required>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-group row mb-0\">\r\n");
      out.write("                                    <div class=\"col-md-8 offset-md-4\">\r\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-primary\">\r\n");
      out.write("                                            Login\r\n");
      out.write("                                        </button>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-md-8 offset-md-4\">\r\n");
      out.write("                                        <a href=\"register.jsp\" class=\"btn btn-success\">\r\n");
      out.write("                                            New User?\r\n");
      out.write("                                        </a>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div><br>\r\n");
      out.write("            <form action=\"InsertMenuController\" method=\"get\">\r\n");
      out.write("                <!--Food Code: <input type=\"number\" name=\"menuCode\" required><br><br>-->\r\n");
      out.write("                Food Name: <input type=\"text\" name=\"fdName\" required><br><br>\r\n");
      out.write("                Food Description: <input type=\"text\" name=\"fdDesc\" required><br><br>\r\n");
      out.write("                Food Image: <input type=\"text\" name=\"fdImage\" required><br><br>\r\n");
      out.write("                Price: <input type=\"text\" name=\"price\" required><br><br>\r\n");
      out.write("                <!--Category: <input type=\"text\" name=\"category\" required><br><br>-->\r\n");
      out.write("                Category<br>\r\n");
      out.write("                <select name=\"category\">\r\n");
      out.write("                    <option value=\"Food\">Food</option>\r\n");
      out.write("                    <option value=\"Drink\">Drink</option>\r\n");
      out.write("                    <option value=\"Set\">Set</option>\r\n");
      out.write("                </select>\r\n");
      out.write("\r\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\">\r\n");
      out.write("                    Add menu\r\n");
      out.write("                </button>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
