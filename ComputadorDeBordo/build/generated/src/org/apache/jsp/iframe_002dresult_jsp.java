package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class iframe_002dresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <title>iGmax</title>\n");
      out.write("    </head>\n");
      out.write("    <body>       \n");
      out.write("        <div class=\"bkg\">\n");
      out.write("            <label class=\"a-side\"> Nome do servlet: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getContextPath());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Nome da máquina local: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getLocalName());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Endereço da máquina local: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getLocalAddr());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Porta da máquina local: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getLocalPort());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Endereço do servidor: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getRemoteHost());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Porta do servidor: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getRemotePort());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Método de requisição: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getMethod());
      out.write("</label>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <label class=\"a-side\"> Protocolo utilizado: </label>\n");
      out.write("            <label class=\"b-side\">");
      out.print( request.getProtocol());
      out.write("</label>\n");
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
