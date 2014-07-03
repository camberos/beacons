<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
     
          String selectcamp = request.getParameter("selectcampaign");
          
          

          if(!selectcamp.equals(null)) 
          {

          mtbl.setConectar();

          /*
          ResultSet rsUsers=mtbl.getQuery("select subscribers.sub_id, subscribers.firstname, subscribers.lastname, subscribers.company, subscribers.email"+
          " from subscribers, campaign, campinfo"+
          " where subscribers.sub_id = campinfo.sub_id"+
          " and campinfo.camp_id <> campaign.camp_id"+
          " and campaign.campname='"+selectcamp+"'"+
          " and subscribers.sub_id NOT IN ("+
                "select subscribers.sub_id "+
                "from subscribers, campaign, campinfo "+
                "where subscribers.sub_id = campinfo.sub_id "+
                "and campinfo.camp_id <> campaign.camp_id "+
                "and campaign.campname <>'"+selectcamp+"');");
          */

          ResultSet rsUsers=mtbl.getQuery("select distinct subscribers.sub_id, subscribers.firstname, subscribers.lastname, subscribers.company, subscribers.email"+
                                            " from subscribers, campaign, campinfo"+
                                            " where subscribers.sub_id = campinfo.sub_id"+
                                            " and campinfo.camp_id <> '"+selectcamp+"'"+
                                            " and subscribers.sub_id NOT IN ("+
                                            " select subscribers.sub_id"+
                                            " from subscribers, campinfo"+ 
                                            " where subscribers.sub_id = campinfo.sub_id"+ 
                                            " and campinfo.camp_id = '"+selectcamp+"')"+
                                            " or subscribers.sub_id IN ("+
                                            " select subscribers.sub_id"+
                                            " from subscribers,campinfo"+
                                            " where subscribers.sub_id <> campinfo.sub_id"+
                                            " and subscribers.sub_id NOT IN ("+
                                            " select subscribers.sub_id"+
                                            " from subscribers, campinfo"+
                                            " where subscribers.sub_id=campinfo.sub_id"+
                                            " ));");
 
          mtbl.setDesconectar();


            while (rsUsers.next()){
            out.print("<tr class=\"odd gradeX\">");                                                                 
            out.print("<td><input type=\"checkbox\" id=\"sub_id\" name="+rsUsers.getString("sub_id")+" class=\"checkboxes\" value="+rsUsers.getString("sub_id")+" /></td>");
            out.print("<td>"+rsUsers.getString("firstname")+"</td>");
            out.print("<td>"+rsUsers.getString("lastname")+"</td>");
            out.print("<td>"+rsUsers.getString("company")+"</td>");
            out.print("<td>"+rsUsers.getString("email")+"</td>");
            out.print("</tr>"); 
            }
     
    }     
%>

