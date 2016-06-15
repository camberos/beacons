<%@ page language="java"
    import="java.sql.*, java.io.*, java.util.* "
    import="manejodb.ManejadoresTablas"
    errorPage="error.jsp" %>

<jsp:useBean id="mntb" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<% 
mntb.setDesconectar();
session.invalidate(); 

response.sendRedirect(request.getContextPath());
%>