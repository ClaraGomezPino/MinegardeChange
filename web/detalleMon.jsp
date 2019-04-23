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

    <title>Gestibank</title>
  </head>
  <body class="brown">
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      ResultSet listado = s.executeQuery ("SELECT * FROM monstruo WHERE idMon='" + request.getParameter("idMon") +"'");

      listado.next();
    %>
             
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
    
    <div class="container  pt-5">>
      <div class="row"</div>
      <div class="row">
        <div class="row col sm2"></div>
        <div class="col m10 card-panel brown lighten-2">
          <h5 class="center"><%=listado.getString("nomMon") %></h5>
            <p class="center">
              <img src="<%=listado.getString("imgMon") %>" width="100px"></img>
            </p>          
            <p>
              Código: 
              <b><%=listado.getString("idMon") %></b>
            </p>
            <p>
              Nombre: 
              <b><%=listado.getString("nomMon") %></b>
            </p>
            <p>
              Elemento: 
              <img src="imagenes/<%=listado.getString("eleMon")%>.png" width="30px">
            </p>
            <p>
              Descripción: 
              <b><%=listado.getString("desMon") %></b>
            </p>
            <br>
            <p class="center">
              <a href="bestiario.jsp" class="btn waves-effect waves-light center">
                Aceptar
                <i class="material-icons">check_circle</i>
              </a>
            </p>
            <br>
          </form>
        </div>
                    <div class="col sm2">

      </div>
    </div>
    <% conexion.close(); %>

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

  </body>
</html>
