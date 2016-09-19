<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas"></jsp:useBean>
<html>
<body>
<%
                mtbl.setConectar();
                    ResultSet rs=mtbl.getQuery("select * from users where user_name='"+request.getRemoteUser()+"';");
		mtbl.setDesconectar(); 
                rs.last();

		String name=rs.getString("name");
                String last_name=rs.getString("last_name");

                session.setAttribute("name",name);			
                session.setAttribute("last_name",last_name);
                
                // Administrator
		if (request.isUserInRole("admin")) 
		{    
                    	response.sendRedirect("admin/index.jsp");
			return;
		}
                // User
		if (request.isUserInRole("user")) 
		{    
		//	response.sendRedirect("user/index.jsp");
		//	return;
		}
                // Robot
		if (request.isUserInRole("robot")) 
		{    
		//	response.sendRedirect("robot/index.jsp");
		//	return;
		}
%>
</body>
</html>
