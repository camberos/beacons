<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          String selectedImage = request.getParameter("selectedImage");
          if (!selectedImage.equals(null))
           
            out.print("<img src=\"/MailingLists/download/"+selectedImage+"?id=uniqueid\">");
	  else	  
            out.print("");  
%>

