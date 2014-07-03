<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
    String selectlist = request.getParameter("selectlist");

    if(!selectlist.equals(null)) 
    {   

        mtbl.setConectar();
        ResultSet rslist=mtbl.getQuery("select subscribers.sub_id,subscribers.email,subscribers.firstname,subscribers.lastname,subscribers.company"+
        " from subscribers, mailinginfo,mailinglist" +
        " where subscribers.sub_id=mailinginfo.sub_id"+
        " and mailinginfo.mailing_id=mailinglist.mailing_id"+
        " and mailinglist.mailing_id='"+selectlist+"';");
        
        mtbl.setDesconectar();

        out.print("<thead class=\"flip-content\">");
        out.print("<tr>");
        out.print("<th width=\"8px\"></th>");
out.print("<th class=\"hidden-480\">Email</th>");
        out.print("<th class=\"hidden-480\">First Name</th>");
        out.print("<th class=\"hidden-480\">Last Name</th>");
        out.print("<th class=\"hidden-480\">Company</th>");
        
        out.print("<th>Lists</th>");
        out.print("<th id=\"deleteheader\"></th>");
        out.print("</tr>");
        out.print("</thead>");
        out.print("<tbody>");

      
        while (rslist.next()){                                                        
            
            out.print("<tr class=\"odd gradeX\">");
            
            out.print("<td class=\"hidden-480\"  ><input id="+rslist.getString("sub_id")+" type=\"checkbox\"class=\"checkboxes\" /></td>"); 
    
            for(int i=2;i<6;i++) {
                out.print("<td class=\"hidden-480\">"+rslist.getString(i)+"</td>");
            }
            
           out.print("<td><div class=\"btn-group open\"><a id=\"viewlist\" class=\"btn green dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">View <i class=\"icon-angle-down\"></i></a><ul id=\"list\" class=\"dropdown-menu\"></ul></div></td>");
            out.print("<td id=\"deletecell\"><a href=\"#myModal1\" role=\"button\" class=\"btn btn-primary green\" data-toggle=\"modal\">Remove</a></td>");
            out.print("</tr>");
        }

        out.print("</tbody>");

    }  
  
%>

