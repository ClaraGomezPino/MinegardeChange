<% response.sendRedirect("bestiario.jsp");

%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">



    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>
  
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      ResultSet listaMisiones = s.executeQuery("SELECT * FROM mision");
    %>



    
    
    <div class="brown">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <!-- Marca/logo -->
                    <a class="navbar-brand" href="#">
                        <img src="imagenes/gs icon.png" alt="logo" style="width:40px;">
                    </a>

                    <!-- Links -->
                    <ul class="navbar-nav">
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


            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">
                    <br>
                    <br> <b>Información de actualidad.</b>
                    <br>
                    <br>
                </h1>
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-10 burly">
                                <img alt="Bootstrap Image Preview" src="imagenes/QUEST ICON.png" class="centerImage">
                                <table class="table">
                                    <thead>
                                        <tr><th>#</th><th>Misión</th><th>Recompensa</th><th>Descripción Breve</th><th>Zona</th></tr>
                                    </thead>
                                    <%
                                      while (listaMisiones.next()) {
                                    %>
                                    <tr>
                                    <td><%=listaMisiones.getString("idMis")%></td>
                                    <td><%=listaMisiones.getString("nomMis")%></td>
                                    <td><%=listaMisiones.getString("recMis")%>z</td>
                                    <td><%=listaMisiones.getString("desMis")%></td>
                                    <td><%=listaMisiones.getString("habMis")%></td>
            <%
              }
            %>                 
                                    </tr>

                                </table>
                                <form method="post" action="creaMis.jsp">
            
                
                                <button class="btn waves-effect waves-light center" type="submit" name="aceptar">
                                    Añadir misión
                                </button>
                                </form>
                                    <br>
                                    
                            </div>
                            <div class="col-md-1">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-10 burly">
                                <img alt="Bootstrap Image Preview" src="imagenes/MAP ICON.png" class="centerImage">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>
                                                #
                                            </th>
                                            <th>
                                                Zona
                                            </th>
                                            <th>
                                                Clima
                                            </th>
                                            <th>
                                                Plagas
                                            </th>
                                            <th>
                                                Plagas
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                1
                                            </td>
                                            <td>
                                                TB - Monthly
                                            </td>
                                            <td>
                                                01/04/2012
                                            </td>
                                            <td>
                                                Default
                                            </td>
                                            <td>
                                                Default
                                            </td>
                                        </tr>
                                        <tr class="table-active">
                                            <td>
                                                1
                                            </td>
                                            <td>
                                                TB - Monthly
                                            </td>
                                            <td>
                                                01/04/2012
                                            </td>
                                            <td>
                                                Approved
                                            </td>
                                            <td>
                                                Approved
                                            </td>
                                        </tr>
                                        <tr class="table-success">
                                            <td>
                                                2
                                            </td>
                                            <td>
                                                TB - Monthly
                                            </td>
                                            <td>
                                                02/04/2012
                                            </td>
                                            <td>
                                                Declined
                                            </td>
                                            <td>
                                                Declined
                                            </td>
                                        </tr>
                                        <tr class="table-warning">
                                            <td>
                                                3
                                            </td>
                                            <td>
                                                TB - Monthly
                                            </td>
                                            <td>
                                                03/04/2012
                                            </td>
                                            <td>
                                                Pending
                                            </td>
                                            <td>
                                                Pending
                                            </td>
                                        </tr>
                                        <tr class="table-danger">
                                            <td>
                                                4
                                            </td>
                                            <td>
                                                TB - Monthly
                                            </td>
                                            <td>
                                                04/04/2012
                                            </td>
                                            <td>
                                                Call in to confirm
                                            </td>
                                            <td>
                                                Call in to confirm
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-1">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>

</html>