<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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

  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <div class="row"></div>
      <div class="row">
        <div class="row col m3"></div>
        <div class="col m6 card-panel grey lighten-5">
          <h5 class="center">Información del monstruo</h5>
          <form method="post" action="altaMis.jsp">
            <div class="input-field">
              <i class="material-icons prefix">label_outline</i>
              <input type="number" name="idMis" id="idMis" value="<%=request.getParameter("idMis") %>" required>
              <label for="idMis">código</label>
            </div>
            <div class="input-field">
              <i class="material-icons prefix">perm_identity</i>
              <input type="text" name="nomMis" id="nomMis" value="<%=request.getParameter("nomMis") %>" required>
              <label for="nomMis">Nombre</label>
            </div>
            <div class="input-field">
              <i class="material-icons prefix">location_on</i>
              <input type="text" name="recMis" id="recMis" value="<%=request.getParameter("recMis") %>" required>
              <label for="recMis">Recompensa</label>
            </div>
            <div class="input-field">
              <i class="material-icons prefix">call</i>
              <input type="text" name="desMis" id="desMis" value="<%=request.getParameter("desMis") %>" required>
              <label for="desMis">Descripción Corta</label>
            </div>
            <div class="input-field">
              <i class="material-icons prefix">call</i>
              <input type="text" name="habMis" id="habMis" value="<%=request.getParameter("habMis") %>" required>
              <label for="habMis">Zona</label>
            </div>
            <br> 
            <br> 
            <br> 
            <div class="input-field">
              <i class="material-icons prefix">call</i>
              <input type="text" name="desLrgMis" id="desLrgMis" value="<%=request.getParameter("desLrgMis") %>" required>
              <label for="desLrgMis">Introduzca aquí una descripción detallada.</label>
            </div>
            <p class="center">
              <button class="btn waves-effect waves-light center" type="submit" name="aceptar">
              Aceptar
              <i class="mdi-action-check-circle"></i>
              </button>
              <a href="index.jsp" class="btn waves-effect waves-light center red">
              Cancelar
              <i class="fa fa-times"></i>
              </a>
            </p>
            <br>
          </form>
        </div>
      </div>
    </div>

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>


  </body>
</html>