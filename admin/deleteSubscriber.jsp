<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          mtbl.setConectar();
          mtbl.setBorrar("subscribers","sub_id="+request.getParameter("sub_id")+"");
          mtbl.setDesconectar(); 
          response.sendRedirect("admin_mansub.jsp");
%>

