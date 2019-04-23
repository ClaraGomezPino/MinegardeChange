package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class bestiario_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("//Select elemento requiere de recolección de datos desde la tabla Opciones: Array.\n");
      out.write("//Estilo, general.\n");
      out.write("//Select, por defecto previo en modificación Select = previo.\n");
      out.write("// \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <!-- Materialize -->\n");
      out.write("    <link href=\"http://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css\">\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <title>El Bestiario de Minegarde</title>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body class=\"brown\">\n");
      out.write("    ");

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      ResultSet listado = s.executeQuery("SELECT * FROM monstruo");
      
      
      ResultSet elementos = s.executeQuery("SELECT * FROM elemento");
    
    
    
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <div class=\"container\">\n");
      out.write("            <nav class=\"navbar navbar-expand-sm bg-dark navbar-dark fixed-top\">\n");
      out.write("                    <!-- Marca/logo -->\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                        <img src=\"imagenes/gsicon.png\" style=\"width:40px;\">\n");
      out.write("                    </a>\n");
      out.write("\n");
      out.write("                    <!-- Links -->\n");
      out.write("                    <ul class=\"navbar-nav\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                           <a> <h4>Cazadores de Minegarde</h4></a>\n");
      out.write("                        </li>\n");
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
      out.write("                </nav> \n");
      out.write("      <div class=\"row\"></div>\n");
      out.write("      <div class=\"row s12 m12 l12\">\n");
      out.write("        <div class=\"brown lighten-2\">\n");
      out.write("          <h3 class=\"center\">M I N E G A R D E</h3>\n");
      out.write("          <table class=\"bordered centered responsive-table\">\n");
      out.write("            <thead><th>Código</th><th>Imagen</th><th>Nombre</th><th>Elemento</th><th>Descripción</th><th></th><th></th></thead>\n");
      out.write("              ");

                while (listado.next()) {
              
      out.write("\n");
      out.write("            <tr>\n");
      out.write("              <td>");
      out.print(listado.getString("idMon"));
      out.write("</td>\n");
      out.write("              <td><img src=\"");
      out.print(listado.getString("imgMon"));
      out.write("\" width=\"50px\"></td>              \n");
      out.write("              <td>");
      out.print(listado.getString("nomMon"));
      out.write("</td>\n");
      out.write("              <td><img src=\"imagenes/");
      out.print(listado.getString("eleMon"));
      out.write(".png\" width=\"40px\"></td>\n");
      out.write("              <td>");
      out.print(listado.getString("desMon"));
      out.write("</td>\n");
      out.write("            <form method=\"post\" action=\"modificaMon.jsp\">\n");
      out.write("              <input type=\"hidden\" name=\"idMon\" value=\"");
      out.print(listado.getString("idMon"));
      out.write("\">\n");
      out.write("              <input type=\"hidden\" name=\"nomMon\" value=\"");
      out.print(listado.getString("nomMon"));
      out.write("\">\n");
      out.write("              <input type=\"hidden\" name=\"eleMon\" value=\"");
      out.print(listado.getString("eleMon"));
      out.write("\">\n");
      out.write("              <input type=\"hidden\" name=\"desMon\" value=\"");
      out.print(listado.getString("desMon"));
      out.write("\"> \n");
      out.write("              <input type=\"hidden\" name=\"imgMon\" value=\"");
      out.print(listado.getString("imgMon"));
      out.write("\"> <td>\n");
      out.write("                <button class=\"btn waves-effect waves-light center blue\" type=\"submit\" name=\"editar\">\n");
      out.write("                  Editar\n");
      out.write("                </button>\n");
      out.write("              </td>\n");
      out.write("            </form>\n");
      out.write("            <form method=\"post\" action=\"borraMon.jsp\">\n");
      out.write("              <input type=\"hidden\" name=\"idMon\" value=\"");
      out.print(listado.getString("idMon"));
      out.write("\">\n");
      out.write("              <td>\n");
      out.write("                <button class=\"btn waves-effect waves-light center red\" type=\"submit\" name=\"borrar\">\n");
      out.write("                  Borrar\n");
      out.write("                </button>\n");
      out.write("              </td>\n");
      out.write("            </form>\n");
      out.write("            </tr>\n");
      out.write("            ");

              }
            
      out.write("\n");
      out.write("            <form method=\"post\" action=\"altaMon.jsp\">\n");
      out.write("              <tr>\n");
      out.write("                <td>\n");
      out.write("                  <div class=\"input-field\">\n");
      out.write("                    <input type=\"number\" name=\"idMon\" id=\"idMon\" required>\n");
      out.write("                    <label style=\"color:silver\" for=\"idMon\">código</label>\n");
      out.write("                  </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                  <div class=\"input-field\">\n");
      out.write("                    <input type=\"text\" name=\"nomMon\" id=\"nomMon\" >\n");
      out.write("                    <label style=\"color:silver\" for=\"nomMon\">nombre</label>\n");
      out.write("                  </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("              ");

                while (elementos.next()) {
              
      out.write("\n");
      out.write(" <select class=\"form-control\" id=\"eleMon\" name=\"eleMon\">\n");
      out.write("  <option selected value=\"6\">basico</option>\n");
      out.write("  <option value=\"");
      out.print(elementos.getString("idEle"));
      out.write('"');
      out.write('>');
      out.print(elementos.getString("nomEle"));
      out.write("</option>\n");
      out.write("\n");
      out.write("</select>\n");
      out.write("              ");

                }
              
      out.write("                \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                  <div class=\"input-field\">\n");
      out.write("                    <input type=\"text\" name=\"desMon\" id=\"desMon\">\n");
      out.write("                    <label style=\"color:silver\" for=\"desMon\">Descripción</label>\n");
      out.write("                  </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                  <button class=\"btn btn-info center\" type=\"submit\" name=\"aceptar\">\n");
      out.write("                    Añadir\n");
      out.write("                  </button>\n");
      out.write("                </td>\n");
      out.write("              </tr>\n");
      out.write("            </form>\n");
      out.write("            <form method=\"post\" action=\"buscaMon.jsp\">\n");
      out.write("              <tr>\n");
      out.write("                <td>\n");
      out.write("                  <div class=\"input-field\">\n");
      out.write("                    <input type=\"text\" name=\"nomMon\" id=\"buscaNomMon\">\n");
      out.write("                    <label style=\"color:silver\" for=\"buscaNomMon\">nombre</label>\n");
      out.write("                  </div>\n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("                <td>\n");
      out.write("                  <button class=\"btn btn-info center\" type=\"submit\" name=\"aceptar\">\n");
      out.write("                    <i class=\"fa fa-search\" style=\"color:black\"></i> Buscar por nombre\n");
      out.write("                  </button>\n");
      out.write("                </td>\n");
      out.write("              </tr>\n");
      out.write("            </form>\n");
      out.write("            <form method=\"post\" action=\"buscaEleMon.jsp\">\n");
      out.write("              <tr>\n");
      out.write("                <td>\n");
      out.write("                  <div>\n");
      out.write("\n");
      out.write(" <select class=\"form-control\" id=\"eleMon\" name=\"eleMon\">\n");
      out.write("  <option selected value=\"6\">basico</option>\n");
      out.write("  <option value=\"1\">fuego</option>\n");
      out.write("  <option value=\"2\">agua</option>\n");
      out.write("  <option value=\"3\">hielo</option>\n");
      out.write("  <option value=\"4\">trueno</option>\n");
      out.write("  <option value=\"5\">dragon</option>\n");
      out.write("</select>\n");
      out.write("                  </div>\n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("                <td>\n");
      out.write("                    \n");
      out.write("                  <button class=\"btn btn-info center\" type=\"submit\" name=\"aceptar\">\n");
      out.write("                    <i class=\"fa fa-search\" style=\"color:black\"></i> Buscar por elemento\n");
      out.write("                  </button>\n");
      out.write("                </td>\n");
      out.write("              </tr>\n");
      out.write("            </form>\n");
      out.write("          </table>  \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    ");

      conexion.close();
    
      out.write("\n");
      out.write("    <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-2.1.1.min.js\"></script>\n");
      out.write("    <!-- Materialize -->\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js\"></script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("      $('.datepicker').pickadate({\n");
      out.write("        // The title label to use for the month nav buttons\n");
      out.write("        labelMonthNext: 'Mes siguiente',\n");
      out.write("        labelMonthPrev: 'Mes anterior',\n");
      out.write("        // The title label to use for the dropdown selectors\n");
      out.write("        labelMonthSelect: 'Selecciona un mes',\n");
      out.write("        labelYearSelect: 'Selecciona un año',\n");
      out.write("        // Months and weekdays\n");
      out.write("        monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],\n");
      out.write("        monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],\n");
      out.write("        weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],\n");
      out.write("        weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sab'],\n");
      out.write("        // Materialize modified\n");
      out.write("        weekdaysLetter: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],\n");
      out.write("        // Today and clear\n");
      out.write("        today: 'Hoy',\n");
      out.write("        clear: 'Limpiar',\n");
      out.write("        close: 'Cerrar',\n");
      out.write("        format: \"yyyy-mm-dd\",\n");
      out.write("        showOtherMonths: true,\n");
      out.write("        selectOtherMonths: true,\n");
      out.write("        selectMonths: true, // Creates a dropdown to control month\n");
      out.write("        selectYears: 100, // Creates a dropdown of 15 years to control year\n");
      out.write("        max: true,\n");
      out.write("        firstDay: 1\n");
      out.write("      });\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
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
