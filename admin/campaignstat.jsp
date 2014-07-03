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

          ResultSet rsTot=mtbl.getQuery("select COUNT(campinfo.sub_id) as total_sent"+
          " from campaign, campinfo" +
          " where  campinfo.camp_id = campaign.camp_id" +
          " and campaign.camp_id='"+selectcamp+"';");

          ResultSet rsNoreply=mtbl.getQuery("select COUNT(campinfo.sub_id) as noreply"+
          " from campaign, campinfo, attributes" +
          " where  campinfo.camp_id = campaign.camp_id"+
          " and campinfo.att_id = attributes.att_id"+
          " and attributes.attending='No reply'"+
          " and campaign.camp_id='"+selectcamp+"';");

          ResultSet rsReply=mtbl.getQuery("select COUNT(campinfo.sub_id) as reply"+
          " from campaign, campinfo, attributes" +
          " where  campinfo.camp_id = campaign.camp_id"+
          " and campinfo.att_id = attributes.att_id"+
          " and attributes.attending<>'No reply'"+
          " and campaign.camp_id='"+selectcamp+"';");

          ResultSet rsYes=mtbl.getQuery("select COUNT(campinfo.sub_id) as yes"+
          " from campaign, campinfo, attributes" +
          " where  campinfo.camp_id = campaign.camp_id"+
          " and campinfo.att_id = attributes.att_id"+
          " and attributes.attending='Yes'"+
          " and campaign.camp_id='"+selectcamp+"';");

          ResultSet rsNo=mtbl.getQuery("select COUNT(campinfo.sub_id) as no"+
          " from campaign, campinfo, attributes" +
          " where  campinfo.camp_id = campaign.camp_id"+
          " and campinfo.att_id = attributes.att_id"+
          " and attributes.attending='No'"+
          " and campaign.camp_id='"+selectcamp+"';");
          
          mtbl.setDesconectar();
        

           float tot=0, noreply=0, reply=0, yes=0, no=0;

            while (rsTot.next()){
            tot = Integer.parseInt(rsTot.getString("total_sent"));
            out.print("<tr>"); 
            out.print("<th>TOTAL SENT</th>");
            out.print("<td>"+rsTot.getString("total_sent")+"</td>"); 
            out.print("<td></td>");                           
            out.print("</tr>"); 
            }
            
            while (rsNoreply.next()){
            noreply = Integer.parseInt(rsNoreply.getString("noreply"));
            out.print("<tr>"); 
            out.print("<th>NOT RESPONDED</th>");
            out.print("<td>"+rsNoreply.getString("noreply")+"</td>");
            out.print("<td>"+Math.round((noreply*100)/tot)+"</td>"); 
            out.print("</tr>"); 
            }    
               
            while (rsReply.next()){
            reply = Integer.parseInt(rsReply.getString("reply"));
            out.print("<tr>"); 
            out.print("<th style=\"background-color:#35AA47; color:white;\">RESPONDED</th>");
            out.print("<td style=\"background-color:#35AA47; color:white;\">"+rsReply.getString("reply")+"</td>");
            out.print("<td style=\"background-color:#35AA47; color:white;\">"+Math.round((reply*100)/tot)+"</td>"); 
            out.print("</tr>"); 
            } 
            
            while (rsYes.next()){
            yes = Integer.parseInt(rsYes.getString("yes"));
            out.print("<tr>"); 
            out.print("<th>&nbsp;&nbsp;&nbsp;- Yes</th>");
            out.print("<td>"+rsYes.getString("yes")+"</td>");
            out.print("<td>"+Math.round((yes*100)/tot)+"</td>"); 
            out.print("</tr>"); 
            } 

            while (rsNo.next()){
            no = Integer.parseInt(rsNo.getString("no"));
            out.print("<tr>"); 
            out.print("<th>&nbsp;&nbsp;&nbsp;- No</th>");
            out.print("<td>"+rsNo.getString("no")+"</td>");
            out.print("<td>"+Math.round((no*100)/tot)+"</td>"); 
            out.print("</tr>"); 
            } 

       
            }
                                                                               
       

								 

          
%>

