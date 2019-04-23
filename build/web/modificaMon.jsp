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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </head>
  <body class="brown">
    <% request.setCharacterEncoding("UTF-8");
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement q = conexion.createStatement();
      
      ResultSet elementos = q.executeQuery("SELECT * FROM elemento");
    
      String elementoId = request.getParameter("eleMon");
      String elementoNom = "";
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
    
    
    <div class="container pt-5"">

      <div class="row">
        <div class="row col-sm-3"></div>
        <div class="col-sm-6 card-panel brown lighten-2">
          <h5 class="center">Edición de datos del monstruo</h5>
          <form method="post" action="editaMon.jsp">
            <div class="input-field blue-text">
              <input type="number" name="idMon" id="idMon" value="<%=request.getParameter("idMon") %>" readonly>
              <label style="color:silver" for="idMon">código</label>
            </div>
            <div class="input-field">
              <input type="text" name="nomMon" id="nomMon" value="<%=request.getParameter("nomMon") %>" required>
              <label style="color:silver" for="nomMon">Nombre</label>
            </div>
            <div>
              <br>
             
              
              
              
              
              
              
                      <%
            elementos.beforeFirst();
           while (elementos.next()) {%> 
              
              <%  if (elementos.getString("idEle").equals(elementoId)) {
                  elementoNom = elementos.getString("nomEle");}
               
                   
                   
               
           }
        %>  
              
              
              
              
              
              
              
              <label style="color:silver" for="desMon">Elemento</label>

              
              <select class="form-control" id="eleMon" required name="eleMon">
 


     <option value="<%=request.getParameter("eleMon") %>" selected><% out.println(elementoNom); %></option>
  <% elementos.beforeFirst();

                while (elementos.next()) {
              %>                
  <option value="<%=elementos.getString("idEle")%>"><%=elementos.getString("nomEle")%></option>
              <%
                }
              %>                
</select>
                                        <br> 

            </div>
            <div class="input-field">
              <input type="text" name="desMon" id="desMon" value="<%=request.getParameter("desMon") %>" required>
              <label style="color:silver" for="desMon">Descripción</label>
            </div>
            <br> 
            <br> 
            <br> 
            <div class="input-field">
              <input type="text" name="imgMon" id="imgMon" value="<%=request.getParameter("imgMon")%>">
              <label style="color:silver" for="desMon">Si desea añadir una imagen del monstruo vía URL, hágalo desde este campo</label>
                          <br> 
                          <br> 

            </div>
            <p class="center">
              <button class="btn waves-effect waves-light center" type="submit" name="aceptar">
              Aceptar
              <i class="mdi-action-check-circle"></i>
              </button>
              <a href="bestiario.jsp" class="btn waves-effect waves-light center red">
              Cancelar
              <i class="fa fa-times"></i>
              </a>
            </p>
            <br>
          </form>
        
        </div>
                      <div class="col-sm3"></div>

        
      </div>
    </div>

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>


  </body>
</html>