<%@ page language="java"
    import="java.sql.*,java.util.UUID, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
            String id = request.getParameter("id");
 
          mtbl.setConectar();
          ResultSet rsDisplayList=mtbl.getQuery("select mailingname from mailinglist, mailinginfo where mailinginfo.mailing_id=mailinglist.mailing_id and mailinginfo.sub_id='"+id+"';");
 
          mtbl.setDesconectar();


            while (rsDisplayList.next()){; 
            out.print("<li><a href=\"#\">"+rsDisplayList.getString("mailingname")+"</a></li>");
            
            }
     
     
      
    
          

%>

