package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class receipt_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Receipt</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style-receipt.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container mt-5 mb-5\">\n");
      out.write("            <div class=\"row d-flex justify-content-center\">\n");
      out.write("                <div class=\"col-md-8\">\n");
      out.write("                    <div class=\"card\">\n");
      out.write("                        <div class=\"text-left logo p-2 px-5\"> <img src=\"\" width=\"50\"> </div>\n");
      out.write("                        <div class=\"invoice p-5\">\n");
      out.write("                            <h5>Your Reservation Confirmed!</h5> <span class=\"font-weight-bold d-block mt-4\">Hello, </span> <span>You order has been confirmed and will be shipped in next two days!</span>\n");
      out.write("                            <div class=\"payment border-top mt-3 mb-3 border-bottom table-responsive\">\n");
      out.write("                                <table class=\"table table-borderless\">\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"py-2\"> <span class=\"d-block text-muted\">Order Date</span> <span>12 Jan,2018</span> </div>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <div class=\"py-2\"> <span class=\"d-block text-muted\">Booking Id</span> <span></span> </div>\n");
      out.write("                                            </td>\n");
      out.write("\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"product border-bottom table-responsive\">\n");
      out.write("                                <table class=\"table table-borderless\">\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td width=\"20%\"> <img src=\"https://i.imgur.com/u11K1qd.jpg\" width=\"90\"> </td>\n");
      out.write("                                            <td width=\"60%\"> <span class=\"font-weight-bold\">Men's Sports cap</span>\n");
      out.write("                                                <div class=\"product-qty\"> <span class=\"d-block\">Quantity:1</span> <span>Color:Dark</span> </div>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td width=\"20%\">\n");
      out.write("                                                <div class=\"text-right\"> <span class=\"font-weight-bold\">$67.50</span> </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td width=\"20%\"> <img src=\"https://i.imgur.com/SmBOua9.jpg\" width=\"70\"> </td>\n");
      out.write("                                            <td width=\"60%\"> <span class=\"font-weight-bold\">Men's Collar T-shirt</span>\n");
      out.write("                                                <div class=\"product-qty\"> <span class=\"d-block\">Quantity:1</span> <span>Color:Orange</span> </div>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td width=\"20%\">\n");
      out.write("                                                <div class=\"text-right\"> <span class=\"font-weight-bold\">$77.50</span> </div>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row d-flex justify-content-end\">\n");
      out.write("                                <div class=\"col-md-5\">\n");
      out.write("                                    <table class=\"table table-borderless\">\n");
      out.write("                                        <tbody class=\"totals\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-left\"> <span class=\"text-muted\">Subtotal</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-right\"> <span>$168.50</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-left\"> <span class=\"text-muted\">Shipping Fee</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-right\"> <span>$22</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-left\"> <span class=\"text-muted\">Tax Fee</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-right\"> <span>$7.65</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-left\"> <span class=\"text-muted\">Discount</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-right\"> <span class=\"text-success\">$168.50</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr class=\"border-top border-bottom\">\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-left\"> <span class=\"font-weight-bold\">Subtotal</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <div class=\"text-right\"> <span class=\"font-weight-bold\">$238.50</span> </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <p>We will be sending shipping confirmation email when the item shipped successfully!</p>\n");
      out.write("                            <p class=\"font-weight-bold mb-0\">Thanks for shopping with us!</p> <span>Nike Team</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"d-flex justify-content-between footer p-3\"> <span>Need Help? visit our <a href=\"#\"> help center</a></span> <span>12 June, 2020</span> </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
