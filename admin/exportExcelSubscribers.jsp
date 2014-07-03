<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
        mtbl.setConectar();
        ResultSet rsSubscribers=mtbl.getQuery("select * from subscribers;");
        mtbl.setDesconectar();

        	String exportToExcel = request.getParameter("exportToExcel");
		if (exportToExcel != null
				&& exportToExcel.toString().equalsIgnoreCase("YES")) {
			response.setContentType("application/vnd.ms-excel");
			response.setHeader("Content-Disposition", "inline; filename="
					+ "CustomerList.xls");

		}    
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
</head>
<body>
          <thead>
            <table>
               <tr>
                 <th>Id</th>
                 <th>Subscriber</th>
                 <th>Email</th>
                 <th>Contact Number</th>
                 <th>Company</th>
                 <th>Status</th>
               </tr>
          </thead>
          <tbody>
                 <%
                    while(rsSubscribers.next()){
                 %>
                 <tr class="odd gradeX">
                     <td><%=rsSubscribers.getString("sub_id")%></td>
                     <td><%=rsSubscribers.getString("firstname")%> <%=rsSubscribers.getString("lastname")%></td>
                     <td ><a href="mailto:<%=rsSubscribers.getString("email")%>"><%=rsSubscribers.getString("email")%></a></td>
                     <td ><%=rsSubscribers.getString("contact_num")%></td>
                     <td ><%=rsSubscribers.getString("company")%></td>
                     <td><span>Enabled</span></td>
                 </tr>
                 <%
                  }
                  %>
                                                                                                                                        
          </tbody>
          </table>
</body>
</html>