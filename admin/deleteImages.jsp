<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          mtbl.setConectar();
          
          //mtbl.setBorrar("campaign","camp_id="+request.getParameter("camp_id")+"");
          
          
          mtbl.setBorrar("images","id="+request.getParameter("id")+"");
          //mtbl.setBorrar("campaign","camp_id="+request.getParameter("camp_id")+"");

          mtbl.setDesconectar(); 
          response.sendRedirect("admin_images.jsp");
%>

