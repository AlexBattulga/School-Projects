package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import BLL.DepositList;
import BLL.DepositDrawalDAO;

public final class DepositWithDrawalInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        \n");
      out.write("         <!--fonts-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Raleway:300,300i,400,400i,500i,600,600i,700,700i,800,900\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600i,700,900\" rel=\"stylesheet\">\n");
      out.write("        \n");
      out.write("        <!--CSS-->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\"> \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.min.css\">\n");
      out.write("        \n");
      out.write("        <title>DEPOSIT/WITHDRAW</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         <div class=\"container\">\n");
      out.write("             \n");
      out.write("             <div class=\"row\">\n");
      out.write("                 \n");
      out.write("                 <div class=\"col-md-1\">\n");
      out.write("                     \n");
      out.write("                    <form class=\"back-button\" action=\"WelcomePage.jsp\" method=\"POST\">\n");
      out.write("                     \n");
      out.write("                     <button class=\"btn btn-danger\">Go Back</button>\n");
      out.write("                     \n");
      out.write("                    </form>\n");
      out.write("                     \n");
      out.write("                 </div>\n");
      out.write("                 \n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("             <div class=\"row\">\n");
      out.write("                 \n");
      out.write("                 <div class=\"col-md-12\">\n");
      out.write("                     \n");
      out.write("                    <div class=\"table-style\">\n");
      out.write("                     \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                     <table class=\"table table-responsive\">\n");
      out.write("            \n");
      out.write("                        <thead>\n");
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("\n");
      out.write("                                <th scope=\"col\">#</th>\n");
      out.write("                                <th scope=\"col\">Transaction ID</th>\n");
      out.write("                                <th scope=\"col\">Customer Name</th>\n");
      out.write("                                <th scope=\"col\">Transaction Type</th>\n");
      out.write("                                <th scope=\"col\">Transaction Date</th>\n");
      out.write("                                <th scope=\"col\">Transaction Amount</th>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                        </thead>\n");
      out.write("\n");
      out.write("                        <tbody>\n");
      out.write("                                 ");
 DepositList clist = (DepositList) (session.getAttribute("currentSessionDeposit"));
      out.write("\n");
      out.write("            ");
 if (clist != null) {
                    for (DepositDrawalDAO depoDOA : clist.getTransactionList()) {
            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("\n");
      out.write("                                <th scope=\"col\"></th>\n");
      out.write("                                 <td >");
      out.print( depoDOA.getTransactionID());
      out.write("</td>\n");
      out.write("                                 <td >");
      out.print( depoDOA.getCustomerName());
      out.write("</td>\n");
      out.write("                                 <td>");
      out.print( depoDOA.getTransactionType());
      out.write("</td>\n");
      out.write("                                 <td>");
      out.print( depoDOA.getTransactionDate());
      out.write("</td>\n");
      out.write("                                 <td>");
      out.print( depoDOA.getTransactionAmount());
      out.write("</td>\n");
      out.write("                                 <td>\n");
      out.write("                                     <form action=\"DepositDeleteServlet\">\n");
      out.write("                                         <input type=\"hidden\" name=\"transactionid\" value=");
      out.print( depoDOA.getTransactionID());
      out.write(">\n");
      out.write("                                     <button class=\"btn btn-danger\" >Delete</button>\n");
      out.write("                                     </form>\n");
      out.write("                                 </td>\n");
      out.write("                                 <td>\n");
      out.write("                                     <button class=\"btn btn-danger\">Edit</button>\n");
      out.write("                                 </td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                            }
                            }
                            
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                            \n");
      out.write("                   </div>\n");
      out.write("                     \n");
      out.write("                 </div>\n");
      out.write("                 \n");
      out.write("             </div>\n");
      out.write("             \n");
      out.write("         </div>\n");
      out.write("                            \n");
      out.write("        <!-- footer -->\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                \n");
      out.write("                <div class=\"row\"> \n");
      out.write("                    \n");
      out.write("                    <div class=\"col-md-8 text-center\">\n");
      out.write("                        \n");
      out.write("                        <div id=\"copyright\">\n");
      out.write("                            \n");
      out.write("                            <p>Copyright &copy;2017<a href=\"#\"> - CMP220 Bank Application</a></p>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"col-md-4\">\n");
      out.write("                        \n");
      out.write("                        <div class=\"arrow-up\">\n");
      out.write("                            \n");
      out.write("                            <a class=\"test\" href=\"#headerID\"><i class=\"fa fa-angle-up\"></i></a>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </footer>                    \n");
      out.write("        \n");
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
