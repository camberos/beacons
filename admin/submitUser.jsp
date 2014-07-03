<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String action=request.getParameter("action");
          String userName = request.getParameter("userName");
          String Pass = request.getParameter("Pass");
          String Role = request.getParameter("Role");
          String firstName = request.getParameter("firstName");
          String lastName = request.getParameter("lastName");

          mtbl.setConectar();
          if (action.equals("add")){
          String data= "'"+userName+"', '"+Pass+"', '"+firstName+"','"+lastName+"'";
          String data2= "'"+userName+"', '"+Role+"'";
           
            mtbl.setInsertar("users",data);
            mtbl.setInsertar("user_roles",data2);
            
           }		  
          if (action.equals("delete")){   
             mtbl.setBorrar("user_roles","user_name='"+userName+"'");
             mtbl.setBorrar("users","user_name='"+userName+"'");
          }
          mtbl.setDesconectar();
          
          out.print("<div class=\"alert alert-success\">");
          out.print("<button class=\"close\" data-dismiss=\"alert\"></button>");
          out.print("<strong>Success!</strong> The User was inserted.");
          out.print("</div>");
		  
		  
%>

