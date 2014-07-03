<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
     
          String selectlist = request.getParameter("selectlist");

          out.print(selectlist);

          if(!selectlist.equals(null)) 
          {

          mtbl.setConectar();

          ResultSet rsUsers=mtbl.getQuery("select distinct subscribers.sub_id, subscribers.firstname, subscribers.lastname, subscribers.company, subscribers.email"+
                                            " from subscribers, mailinginfo"+
                                            " where subscribers.sub_id = mailinginfo.sub_id"+
                                            " and mailinginfo.mailing_id <> '"+selectlist+"'"+
                                            " and subscribers.sub_id NOT IN ("+
                                            " select subscribers.sub_id"+
                                            " from subscribers, mailinginfo"+ 
                                            " where subscribers.sub_id = mailinginfo.sub_id"+ 
                                            " and mailinginfo.mailing_id = '"+selectlist+"')"+
                                            " or subscribers.sub_id IN ("+
                                            " select subscribers.sub_id"+
                                            " from subscribers,mailinginfo"+
                                            " where subscribers.sub_id <> mailinginfo.sub_id"+
                                            " and subscribers.sub_id NOT IN ("+
                                            " select subscribers.sub_id"+
                                            " from subscribers, mailinginfo"+
                                            " where subscribers.sub_id=mailinginfo.sub_id"+
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

