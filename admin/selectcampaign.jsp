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
        ResultSet rslist=mtbl.getQuery("select subscribers.sub_id,subscribers.email,subscribers.firstname,subscribers.lastname,subscribers.company,attributes.attending,attributes.bringpartner,attributes.pname,attributes.plastname,attributes.com,attributes.travel, attributes.accomodation,attributes.config"+
        " from campaign, subscribers, attributes, campinfo" +
        " where campinfo.camp_id=campaign.camp_id"+
        " and campinfo.sub_id=subscribers.sub_id"+
        " and campinfo.att_id=attributes.att_id"+
        " and campaign.camp_id='"+selectcamp+"';");
        ResultSetMetaData rsmd = rslist.getMetaData();
        mtbl.setDesconectar();

        out.print("<thead class=\"flip-content\">");
        out.print("<tr>");
        out.print("<th>To Send</th>");
        out.print("<th class=\"hidden-480\">Email</th>");
        out.print("<th class=\"hidden-480\">First Name</th>");
        out.print("<th class=\"hidden-480\">Last Name</th>");
        out.print("<th class=\"hidden-480\">Company</th>");
        out.print("<th class=\"hidden-480\">Attending</th>");

        rslist.first();

        char[] configarray = rslist.getString("config").toCharArray();

        for(int i=0;i<configarray.length;i++) {
            if(configarray[i]=='1')
            {           
               if(rsmd.getColumnName(i+7).equals("bringpartner"))
                    out.print("<th class=\"hidden-480\">Bring Partner</th>");
               
                if(rsmd.getColumnName(i+7).equals("pname"))
                    out.print("<th class=\"hidden-480\">Partner Name</th>");
              
                if(rsmd.getColumnName(i+7).equals("plastname"))
                    out.print("<th class=\"hidden-480\">Partner Last Name</th>");   
               
                if(rsmd.getColumnName(i+7).equals("com"))
                     out.print("<th class=\"hidden-480\">Comments</th>");

                if(rsmd.getColumnName(i+7).equals("travel"))
                    out.print("<th class=\"hidden-480\">Travel</th> ");

                if(rsmd.getColumnName(i+7).equals("accomodation"))
                    out.print("<th class=\"hidden-480\">Accomodation</th>");
            }
        }
        
        out.print("<th></th>");
        out.print("<th id=\"deleteheader\" style=\"display:none;\"></th>");
        out.print("</tr>");
        out.print("</thead>");
        out.print("<tbody>");

        rslist.beforeFirst();

        while (rslist.next()){                                                        
            
            out.print("<tr class=\"odd gradeX\">");
            
            out.print("<td class=\"hidden-480\" id="+rslist.getString("sub_id")+" ><input id=\"tosend\" type=\"checkbox\"class=\"checkboxes\" /></td>"); 
    
            for(int i=2;i<7;i++) {
                out.print("<td class=\"hidden-480\" id="+rsmd.getColumnName(i)+">"+rslist.getString(i)+"</td>");
            }
            
            for(int i=0;i<configarray.length;i++) {
                if(configarray[i]=='1')
                {
                    if((rsmd.getColumnType(i+7))==(-7))
                     {
                        if(rslist.getString(i+7)==null || rslist.getString(i+7).equals("f"))
                            out.print("<td id="+rsmd.getColumnName(i+7)+" class=\"hidden-480\"><input type=\"checkbox\"  class=\"checkboxes\" disabled /></td>");
                        else
                            out.print("<td id="+rsmd.getColumnName(i+7)+" class=\"hidden-480\"><input type=\"checkbox\"  class=\"checkboxes\" checked disabled /></td>");
                      }  
                      else if(rslist.getString(i+7)==null)
                        out.print("<td id="+rsmd.getColumnName(i+7)+" class=\"hidden-480\"></td>");
                         else
                         out.print("<td id="+rsmd.getColumnName(i+7)+" class=\"hidden-480\">"+rslist.getString(i+7)+"</td>");;
                        
                       
                }
            }
            
            out.print("<td><button class=\"btn green\" type=\"button\" id=\"editlink\">Edit</button></td>");
            out.print("<td id=\"deletecell\" style=\"display:none;\"></td>");
            out.print("</tr>");
        }

        out.print("</tbody>");

    }  
  
%>

