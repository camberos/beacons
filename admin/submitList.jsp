<%@ page language="java"
    import="java.sql.*,java.util.UUID, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          String listname = request.getParameter("listname");
          int row=Integer.parseInt(request.getParameter("row"));
          String[] subscribers = request.getParameterValues("addcol[]");
          String mailingId="";
          String Querynew="";
          String query="";
          
          
          
          mtbl.setConectar();
          
          Querynew= "nextval('mailinglist_mailing_id_seq'::regclass),'"+listname+"'"; 
          mtbl.setInsertar("mailinglist",Querynew);
          
          ResultSet rsCurrentValueMailing=mtbl.getQuery("select currval('mailinglist_mailing_id_seq') as Id;");  // Retrieve current value attribute table
          rsCurrentValueMailing.first();   
          mailingId=rsCurrentValueMailing.getString("Id");
         
          
          for(int i=0;i<row;i++)
          {

          query= "nextval('mailinginfo_mailinginfo_id_seq'::regclass),"+mailingId+","+subscribers[i]; //
          mtbl.setInsertar("mailinginfo",query);
         
          
          }
         
          
          
          out.print("<div class=\"alert alert-success\">"+
                           "<button class=\"close\" data-dismiss=\"alert\"></button>"+
                           "<strong>Success!</strong> List created successfully."+
                           "</div>");
    
          
          mtbl.setDesconectar();
%>

