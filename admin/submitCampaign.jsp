<%@ page language="java"
    import="java.sql.*,java.util.UUID, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          //String name=(String) session.getAttribute("name");
          //String last_name=(String) session.getAttribute("last_name");
          String ip="49.50.255.146";     
          String port="8080";
          String webapp="MailingLists";

          // Unique Key String to match emails
          String key = null;

          String campaignName=request.getParameter("campaignName");
          String dateEnd=request.getParameter("dateEnd");
          String fields=request.getParameter("fields");
          String uploadfile=request.getParameter("uploadfile");

          // BEGIN CHECKBOX CONFIGURATION
          String configuration="";
          for (int i=1; i<=6; i++) {
          if ("check".equals(request.getParameter("checkFields"+i+"")))
              configuration+="1";
          else if(!"check".equals(request.getParameter("checkFields"+i+"")))
              configuration+="0";
          }
          // END CHECKBOX CONFIGURATION

          // BEGIN HTML EMAIL COMPOSITION
          String sAPIKey="n9wsAT4YlD2aLNJDyG3cZw";
          String sHTML=null;
          String sSubject=campaignName;
          String sFromEmail="miguel@rjandco.com.au";
          String sFromName="Miguel Camberos";
          String sEmail="null";
          String sName="null";
          // END HTML COMPOSITION

          // BEGIN DATABASE INSERTION
          mtbl.setConectar();
          ResultSet rsSubscribers=mtbl.getQuery("select * from subscribers;");   // Query to Subscribers table
          
          String data= "nextval('campaign_camp_id_seq'::regclass), '"+campaignName+"', '"+dateEnd+"'";  // Campaign Data string 
          mtbl.setInsertar("campaign",data);                                     // Insert Campaign basic info 
          
          ResultSet rsCurrentValueCampaign=mtbl.getQuery("select currval('campaign_camp_id_seq') as Id;");  // Retrieve current value od table
          rsCurrentValueCampaign.first();   
          String campId=rsCurrentValueCampaign.getString("Id");     

          data= "nextval('attributes_att_id_seq'::regclass), 'No reply', null,null,null,null,null,null,'"+configuration+"'"; // Attribute Data String
          mtbl.setInsertar("attributes",data);                                     // Insert attributes info 

          ResultSet rsCurrentValueAttribute=mtbl.getQuery("select currval('attributes_att_id_seq') as Id;");  // Retrieve current value attribute table
          rsCurrentValueAttribute.first();   
          String attrId=rsCurrentValueAttribute.getString("Id");     

          
		  
		  
          while(rsSubscribers.next()){
              if(rsSubscribers.getString("sub_id").equals(request.getParameter("subscribers"+rsSubscribers.getString("sub_id")+""))){
                  //out.print(rsSubscribers.getString("sub_id"));
                  sName=rsSubscribers.getString("firstname")+" "+rsSubscribers.getString("lastname");
                  sEmail=rsSubscribers.getString("email");
          
                  key=UUID.randomUUID().toString();
                  data= "nextval('campinfo_info_id_seq'::regclass),"+campId+" , "+rsSubscribers.getString("sub_id")+" , "+attrId+" ,null,'"+key+"'"; // Attribute Data String
                  //out.print(data+"\r");

                    sHTML="<!DOCTYPE html>";
                    sHTML+="<html>";
                    sHTML+="<body>";
                    sHTML+="<h2>"+campaignName+"</h2>";
                    sHTML+="<a href=\"http://"+ip+":"+port+"/"+webapp+"/guests/guestConfirmation.jsp?key="+key+"\"><img border=\"0\" src=\"http://"+ip+":"+port+"/"+webapp+"/download/"+uploadfile+"?id=uniqueid\" alt=\"Click here to view this email!\" width=\"758\" height=\"971\"></a>";
                    sHTML+="</body>";
                    sHTML+="</html>";

                  // STORE INFRMATION IN DATABASE
                  mtbl.setInsertar("campinfo",data);    
                  // SEND CAMPAIGN :)
                  //mtbl.sendEmail(sAPIKey,sSubject,sHTML,sFromEmail,sFromName,sEmail,sName);
              }
          }
		  
		  
		  
		  
		  
           mtbl.setDesconectar(); 
           // END DATABASE INSERTION

          out.println("<div class=\"alert alert-block alert-success fade in\">");
          out.println("<button type=\"button\" class=\"close\" data-dismiss=\"alert\"></button>");
          out.println("<h4 class=\"alert-heading\">Success!</h4>");
          out.println("<p>");
          out.println("File sent = "+uploadfile);
          out.println("");
          out.println("</p>");
          out.println("<p>");
          out.println("<a class=\"btn green\" href=\"create_camp.jsp\">Restart Wizard</a> <a class=\"btn black\" href=\"index.jsp\">Finish</a>");
          out.println("</p>");
          out.println("</div>");
         // out.println(checkFields1+" - "+checkFields2+" - "+checkFields3+" - "+checkFields4+" - "+checkFields5+" - "+checkFields6);
          
//          response.sendRedirect("create_camp.jsp");
%>



									
									
									
										
										
									
									
										
								
