<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>
<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          String att_id=request.getParameter("att_id");
          String rsvpConfirmId=request.getParameter("rsvpConfirmId");
          String partnerId=request.getParameter("partnerId");
          String partner_firstnameId=request.getParameter("partner_firstnameId");
          String partner_lastnameId=request.getParameter("partner_lastnameId");
          String commentsId=request.getParameter("commentsId");
          String travelId=request.getParameter("travelId");
          String accommodationId=request.getParameter("accommodationId");
        
          if(partner_firstnameId.equals("undefined"))
              partner_firstnameId=null;  
          if (partner_lastnameId.equals("undefined"))
              partner_lastnameId=null;
          if (commentsId.equals("undefined"))
              commentsId=null;
          if (partnerId.equals("undefined"))
              partnerId="FALSE";
          if (travelId.equals("undefined"))
              travelId="FALSE";
          if (accommodationId.equals("undefined"))              
              accommodationId="FALSE";

           mtbl.setConectar();
          if (rsvpConfirmId.equals("Yes")) {
                mtbl.setModificar("attributes","attending='"+rsvpConfirmId+"', bringpartner='"+partnerId+"', pname='"+partner_firstnameId+"', plastname='"+partner_lastnameId+"', com='"+commentsId+"', travel='"+travelId+"', accomodation='"+accommodationId+"'  ","att_id="+att_id+"");
                out.print("<div class=\"alert alert-block alert-success fade in\">");
                out.print("<button type=\"button\" class=\"close\" data-dismiss=\"alert\"></button>");
                out.print("<h4 class=\"alert-heading\">Success!</h4>");
                out.print("<p>");
                out.print("You are now confirmed, we are going to send you the details shortly.");
                out.print("</p>");
                out.print("<p>");
                out.print("<a class=\"btn green\" href=\"http://www.google.com\" >Close</a> <a class=\"btn black\" href=\"../login.jsp\">Login Area</a>");
                out.print("</p>");
                out.print("</div>");
          }
          if (rsvpConfirmId.equals("No")) {
                mtbl.setModificar("attributes","attending='"+rsvpConfirmId+"'","att_id="+att_id+"");
                out.print("<div class=\"alert alert-block alert-warning fade in\">");
                out.print("<button type=\"button\" class=\"close\" data-dismiss=\"alert\"></button>");
                out.print("<h4 class=\"alert-heading\">Thank you!</h4>");
                out.print("<p>");
                out.print("");
                out.print("</p>");
                out.print("<p>");
                out.print("<a class=\"btn green\" href=\"http://www.google.com\" >Close</a> <a class=\"btn black\" href=\"../login.jsp\">Login Area</a>");
                out.print("</p>");
                out.print("</div>");
          }
          mtbl.setDesconectar(); 

%>

                                                                
									
									
									
										 
									
									
                                                                            
									
								
