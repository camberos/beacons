<%@ page language="java"
    import="java.sql.*,java.util.UUID, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          String selectcamp = request.getParameter("campaignname");
          int row=Integer.parseInt(request.getParameter("row"));
          int headerrow=Integer.parseInt(request.getParameter("i"));
          String[] subscribers = request.getParameterValues("addcol[]");
          String[] headers = request.getParameterValues("header[]");
          
         
          
          String querytable = "attributes(att_id,"+headers[0];
          
          

          for(int i=1;i<headerrow;i++)
            querytable+=","+headers[i];

          querytable+=",config)";

          String query ="nextval('attributes_att_id_seq'::regclass)";


          
          for(int i=0;i<headerrow;i++)
          {
                if(headers[i].equals("attending"))
                    query+=",'No reply'";
               
                if(headers[i].equals("bringpartner"))
                    query+=",null";

                if(headers[i].equals("pname"))
                    query+=",null";

                if(headers[i].equals("plastname"))
                    query+=",null";

                if(headers[i].equals("com"))
                    query+=",null";

                if(headers[i].equals("travel"))
                    query+=",null";

                if(headers[i].equals("accomodation"))
                    query+=",null";
          }
    
          

          String attrId=null;
          String key=null;
          ResultSet rsCurrentValueAttribute=null;
          String Querynew;
          String conf;

          mtbl.setConectar();
          
          
          
          ResultSet rsConfig = mtbl.getQuery("select distinct config"+
                                            " from attributes,campinfo,campaign"+
                                            " where attributes.att_id=campinfo.att_id"+
                                            " and campinfo.camp_id=campaign.camp_id"+
                                            " and campaign.camp_id='"+selectcamp+"';");
          
          rsConfig.first();
          conf=rsConfig.getString("config");   

          query+=",'"+conf+"'";
          
          for(int i=0;i<row;i++)
          {
          
          mtbl.setInsertar(querytable,query); 
            
          rsCurrentValueAttribute=mtbl.getQuery("select currval('attributes_att_id_seq') as Id;");  // Retrieve current value attribute table
          rsCurrentValueAttribute.first();   
          attrId=rsCurrentValueAttribute.getString("Id"); 
          
          key=UUID.randomUUID().toString();
        
          
          Querynew= "nextval('campinfo_info_id_seq'::regclass),"+selectcamp+" , "+subscribers[i]+" ,"+attrId+",null,'"+key+"'"; //
          
      
          mtbl.setInsertar("campinfo",Querynew);
           
          }
         
          mtbl.setDesconectar();
          
          out.print("<div class=\"alert alert-success\">"+
                           "<button class=\"close\" data-dismiss=\"alert\"></button>"+
                           "<strong>Success!</strong> Subscriber/s added successfully."+
                           "</div>");
    
          

%>

