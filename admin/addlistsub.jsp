<%@ page language="java"
    import="java.sql.*,java.util.UUID, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          String listid = request.getParameter("listid");
          int row=Integer.parseInt(request.getParameter("row"));
          String[] subscribers = request.getParameterValues("addcol[]");
          String query="";

          mtbl.setConectar();
        
          for(int i=0;i<row;i++)
          {
          query="nextval('mailinginfo_mailinginfo_id_seq'::regclass),"+listid+","+subscribers[i];
          mtbl.setInsertar("mailinginfo",query); 
            
                   
          }
         
          mtbl.setDesconectar();
          
          
    
          

%>

