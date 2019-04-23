<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Minegarde", "root","");
      Statement s = conexion.createStatement();

      s.execute ("DELETE FROM monstruo WHERE idMon=" + request.getParameter("idMon"));
      
      s.close();
    %>	
    <script>document.location = "bestiario.jsp"</script> 
  </body>
</html>
