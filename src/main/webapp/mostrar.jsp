<%-- 
    Document   : mostrar
    Created on : 3 jul. 2020, 19:22:53
    Author     : Diego Alexander
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.progra2.persistence.Usuario"%>
<%@page import="com.progra2.persistence.UsuarioJpaController"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<% EntityManagerFactory emf = Persistence.createEntityManagerFactory("my_persistence_unit");
 UsuarioJpaController controler = new UsuarioJpaController(emf);
 List<Usuario>lista=new ArrayList<Usuario>();
 lista=controler.findUsuarioEntities();
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
  <h1>Usuarios Registrados</h1>

        <br>
        <br>
        <a href="index.jsp"><input type="button" class="btn-primary" value="Ingresar Usuarios"></a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                    <th scope="col"></th>
                    
                </tr>
            </thead>
            <tbody>
                <% 
                int contador=0;
for (Usuario us : lista) {
                        
    
                %>
                <tr>
                    <th scope="row"> <%=us.getId()%> </th>
                    <td> <%=us.getNombre()%> </td>
                    <td> <%=us.getCorreo()%></td>
                    <td> <%=us.getContraseña()%></td>
                    <td><form action="/ma19010/ServletEliminar"method="post">
                            <button   value="<%=us.getId()%>" type="submit" class= "btn btn-danger eliminar" name="eliminar">eliminar</button>
                        </form>
                </td>
                </tr>
            
                    </div>
                <% contador++;
                    }%>
                    
            </tbody>
        </table>
             
    </body>
</html>

