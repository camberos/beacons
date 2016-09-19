<%@ page language="java"
    import="java.sql.*, java.io.*, java.util.* "
    import="manejodb.ManejadoresTablas"
    errorPage="error.jsp" %>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<% 
mtbl.setDesconectar();
session.invalidate(); 

response.sendRedirect(request.getContextPath());
%>