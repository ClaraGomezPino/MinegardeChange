//Select elemento requiere de recolección de datos desde la tabla Opciones: Array.
//Estilo, general.
//Select, por defecto previo en modificación Select = previo.
// 



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Materialize -->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <title>El Bestiario de Minegarde</title>
  </head>

  <body class="brown">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      ResultSet listado = s.executeQuery("SELECT * FROM monstruo");
      
      
      Statement q = conexion.createStatement();
      
      ResultSet elementos = q.executeQuery("SELECT * FROM elemento");
    
    
    %>

    
    <div class="container">
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <!-- Marca/logo -->
                    <a class="navbar-brand" href="#">
                        <img src="imagenes/gsicon.png" style="width:40px;">
                    </a>

                    <!-- Links -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                           <a> <h4>Cazadores de Minegarde</h4></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="bestiario.jsp">Bestiario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link 2</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link 3</a>
                        </li>
                    </ul>
                </nav> 
      <div class="row"></div>
      <div class="row s12 m12 l12">
        <div class="brown lighten-2">
          <h3 class="center">M I N E G A R D E</h3>
          <table class="bordered centered responsive-table">
            <thead><th>Código</th><th>Imagen</th><th>Nombre</th><th>Elemento</th><th>Descripción</th><th></th><th></th></thead>
              <%
                while (listado.next()) {
              %>
            <tr>
              <td><%=listado.getString("idMon")%></td>
              <td><img src="<%=listado.getString("imgMon")%>" width="50px"></td>              
              <td><%=listado.getString("nomMon")%></td>
              <td><img src="imagenes/<%=listado.getString("eleMon")%>.png" width="40px"></td>
              <td><%=listado.getString("desMon")%></td>
            <form method="post" action="modificaMon.jsp">
              <input type="hidden" name="idMon" value="<%=listado.getString("idMon")%>">
              <input type="hidden" name="nomMon" value="<%=listado.getString("nomMon")%>">
              <input type="hidden" name="eleMon" value="<%=listado.getString("eleMon")%>">

              <input type="hidden" name="desMon" value="<%=listado.getString("desMon")%>"> 
              <input type="hidden" name="imgMon" value="<%=listado.getString("imgMon")%>"> <td>
                <button class="btn waves-effect waves-light center blue" type="submit" name="editar">
                  Editar
                </button>
              </td>
            </form>
            <form method="post" action="borraMon.jsp">
              <input type="hidden" name="idMon" value="<%=listado.getString("idMon")%>">
              <td>
                <button class="btn waves-effect waves-light center red" type="submit" name="borrar">
                  Borrar
                </button>
              </td>
            </form>
            </tr>
            <%
              }
            %>
            <form method="post" action="altaMon.jsp">
              <tr>
                <td>
                  <div class="input-field">
                    <input type="number" name="idMon" id="idMon" required>
                    <label style="color:silver" for="idMon">código</label>
                  </div>
                </td>
                <td>

                </td>
                <td>
                  <div class="input-field">
                    <input type="text" name="nomMon" id="nomMon" required>
                    <label style="color:silver" for="nomMon">nombre</label>
                  </div>
                </td>
                <td>
     
 <select class="form-control" id="eleMon" required name="eleMon">
   <label for="Elemento">Elemento</label>
   
  <option value="" selected disabled hidden>Elija un elemento</option>


     <%
                while (elementos.next()) {
              %>                
  <option value="<%=elementos.getString("idEle")%>"><%=elementos.getString("nomEle")%></option>
              <%
                }
              %>                
</select>

                </td>
                <td>
                  <div class="input-field">
                    <input type="text" name="desMon" id="desMon">
                    <label style="color:silver" for="desMon">Descripción</label>
                  </div>
                </td>
                <td>
                  <button class="btn btn-info center" type="submit" name="aceptar">
                    Añadir
                  </button>
                </td>
              </tr>
            </form>
            <form method="post" action="buscaMon.jsp">
              <tr>
                <td>
                  <div class="input-field">
                    <input type="text" name="nomMon" id="buscaNomMon">
                    <label style="color:silver" for="buscaNomMon">nombre</label>
                  </div>
                </td>
                
                <td>
                  <button class="btn btn-info center" type="submit" name="aceptar">
                    <i class="fa fa-search" style="color:black"></i> Buscar por nombre
                  </button>
                </td>
              </tr>
            </form>
            <form method="post" action="buscaEleMon.jsp">
              <tr>
                <td>
                  <div>
 <select class="form-control" id="eleMon" required name="eleMon">
   <label for="Elemento">Elemento</label>
   
  <option value="" selected disabled hidden>Elija un elemento</option>


     <% elementos.beforeFirst();

                while (elementos.next()) {
              %>                
  <option value="<%=elementos.getString("idEle")%>"><%=elementos.getString("nomEle")%></option>
              <%
                }
              %>                
</select>

                  </div>
                </td>
                
                <td>
                    
                  <button class="btn btn-info center" type="submit" name="aceptar">
                    <i class="fa fa-search" style="color:black"></i> Buscar por elemento
                  </button>
                </td>
              </tr>
            </form>
          </table>  
        </div>
      </div>
    </div>

    <%
      conexion.close();
    %>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

    <script>
      $('.datepicker').pickadate({
        // The title label to use for the month nav buttons
        labelMonthNext: 'Mes siguiente',
        labelMonthPrev: 'Mes anterior',
        // The title label to use for the dropdown selectors
        labelMonthSelect: 'Selecciona un mes',
        labelYearSelect: 'Selecciona un año',
        // Months and weekdays
        monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthsShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
        weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sab'],
        // Materialize modified
        weekdaysLetter: ['D', 'L', 'M', 'X', 'J', 'V', 'S'],
        // Today and clear
        today: 'Hoy',
        clear: 'Limpiar',
        close: 'Cerrar',
        format: "yyyy-mm-dd",
        showOtherMonths: true,
        selectOtherMonths: true,
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 100, // Creates a dropdown of 15 years to control year
        max: true,
        firstDay: 1
      });
    </script>
  </body>
</html>