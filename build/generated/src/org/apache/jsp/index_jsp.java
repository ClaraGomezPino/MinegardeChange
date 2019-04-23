package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

 response.sendRedirect("bestiario.jsp");


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    \n");
      out.write("    <link href=\"http://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  \n");
      out.write("    ");

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      ResultSet listaMisiones = s.executeQuery("SELECT * FROM mision");
    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div class=\"brown\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <nav class=\"navbar navbar-expand-sm bg-dark navbar-dark fixed-top\">\n");
      out.write("                    <!-- Marca/logo -->\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                        <img src=\"imagenes/gs icon.png\" alt=\"logo\" style=\"width:40px;\">\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <!-- Links -->\n");
      out.write("                    <ul class=\"navbar-nav\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"bestiario.jsp\">Bestiario</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\">Link 2</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\">Link 3</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <h1 class=\"text-center\">\n");
      out.write("                    <br>\n");
      out.write("                    <br> <b>Información de actualidad.</b>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                </h1>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-1\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-10 burly\">\n");
      out.write("                                <img alt=\"Bootstrap Image Preview\" src=\"imagenes/QUEST ICON.png\" class=\"centerImage\">\n");
      out.write("                                <table class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr><th>#</th><th>Misión</th><th>Recompensa</th><th>Descripción Breve</th><th>Zona</th></tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    ");

                                      while (listaMisiones.next()) {
                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                    <td>");
      out.print(listaMisiones.getString("idMis"));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(listaMisiones.getString("nomMis"));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(listaMisiones.getString("recMis"));
      out.write("z</td>\n");
      out.write("                                    <td>");
      out.print(listaMisiones.getString("desMis"));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(listaMisiones.getString("habMis"));
      out.write("</td>\n");
      out.write("            ");

              }
            
      out.write("                 \n");
      out.write("                                    </tr>\n");
      out.write("\n");
      out.write("                                </table>\n");
      out.write("                                <form method=\"post\" action=\"creaMis.jsp\">\n");
      out.write("            \n");
      out.write("                \n");
      out.write("                                <button class=\"btn waves-effect waves-light center\" type=\"submit\" name=\"aceptar\">\n");
      out.write("                                    Añadir misión\n");
      out.write("                                </button>\n");
      out.write("                                </form>\n");
      out.write("                                    <br>\n");
      out.write("                                    \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-1\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-1\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-10 burly\">\n");
      out.write("                                <img alt=\"Bootstrap Image Preview\" src=\"imagenes/MAP ICON.png\" class=\"centerImage\">\n");
      out.write("                                <table class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th>\n");
      out.write("                                                #\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                                Zona\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                                Clima\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                                Plagas\n");
      out.write("                                            </th>\n");
      out.write("                                            <th>\n");
      out.write("                                                Plagas\n");
      out.write("                                            </th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td>\n");
      out.write("                                                1\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                TB - Monthly\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                01/04/2012\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Default\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Default\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr class=\"table-active\">\n");
      out.write("                                            <td>\n");
      out.write("                                                1\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                TB - Monthly\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                01/04/2012\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Approved\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Approved\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr class=\"table-success\">\n");
      out.write("                                            <td>\n");
      out.write("                                                2\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                TB - Monthly\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                02/04/2012\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Declined\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Declined\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr class=\"table-warning\">\n");
      out.write("                                            <td>\n");
      out.write("                                                3\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                TB - Monthly\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                03/04/2012\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Pending\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Pending\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr class=\"table-danger\">\n");
      out.write("                                            <td>\n");
      out.write("                                                4\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                TB - Monthly\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                04/04/2012\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Call in to confirm\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                Call in to confirm\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </tbody>\n");
      out.write("                                </table>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-1\">\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/scripts.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
