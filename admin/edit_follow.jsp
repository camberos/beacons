<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
         
          
          int col=Integer.parseInt(request.getParameter("i"));
          String campid = request.getParameter("campaignid");
          String[] headers = request.getParameterValues("headers[]");
          String[] fields = request.getParameterValues("field[]");

          String querysub="";
          String queryatt="";
          
         for(int i=1;i<4;i++)
            querysub+=headers[i]+" = "+fields[i]+", ";

         querysub+=headers[4]+" = "+fields[4]+"";

    

         for(int i=5;i<col-3;i++)
           queryatt+=headers[i]+" = "+fields[i]+", ";

         queryatt+=headers[col-3]+" = "+fields[col-3];
           
          mtbl.setConectar();

          mtbl.setModificar("subscribers",querysub,"sub_id='"+headers[0]+"';");

          ResultSet rsattid = mtbl.getQuery("select distinct campinfo.att_id"+
                                            " from attributes,campinfo,campaign"+
                                            " where attributes.att_id=campinfo.att_id"+
                                            " and campinfo.camp_id=campaign.camp_id"+
                                            " and campaign.camp_id='"+campid+"'"+
                                            " and campinfo.sub_id='"+headers[0]+"';");

         rsattid.first();
         String attid = rsattid.getString("att_id");

         mtbl.setModificar("attributes",queryatt,"att_id='"+attid+"';");

          mtbl.setDesconectar();
        
         out.print("<div class=\"alert alert-success\">"+
                           "<button class=\"close\" data-dismiss=\"alert\"></button>"+
                           "<strong>Success!</strong> "+fields[2].replaceAll("'$|^'", "")+" "+fields[3].replaceAll("'$|^'", "")+" information updated successfully."+
                           "</div>");

        

%>

