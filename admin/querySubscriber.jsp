<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          //out.print(firstName+","+lastName+","+Emails+","+company+","+contact_number);
          //String data="123";
          
          mtbl.setConectar();
          ResultSet rsSubscribers=mtbl.getQuery("select * from subscribers;");
          mtbl.setDesconectar(); 
          
%>


<div class="portlet-body">
                                                                                                                        
                                                                                                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                                                                                                                <thead>
                                                                                                                                        <tr>
                                                                                                                                                <th style="width:8px;"><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" /></th>
                                                                                                                                                <th>Subscriber</th>
                                                                                                                                                <th class="hidden-480">Email</th>
                                                                                                                                                <th class="hidden-480">Contact Number</th>
                                                                                                                                                <th class="hidden-480">Company</th>
                                                                                                                                                <th></th>
                                                                                                                                        </tr>
                                                                                                                                </thead>
                                                                                                                                <tbody >
                                                                                                                                        
                                                                                                                                    <%
                                                                                                                                    String label="";
                                                                                                                                    while(rsSubscribers.next()){
                                                                                                                                    
                                                                                                                                    %>
                                                                                                                                        <tr class="odd gradeX">
                                                                                                                                                <td><input type="checkbox" name="subscribers<%=rsSubscribers.getString("sub_id")%>" class="checkboxes" value="<%=rsSubscribers.getString("sub_id")%>" /></td>
                                                                                                                                                <td><%=rsSubscribers.getString("firstname")%> <%=rsSubscribers.getString("lastname")%></td>
                                                                                                                                                <td class="hidden-480"><a href="mailto:<%=rsSubscribers.getString("email")%>"><%=rsSubscribers.getString("email")%></a></td>
                                                                                                                                                <td class="hidden-480"><%=rsSubscribers.getString("contact_num")%></td>
                                                                                                                                                <td class="center hidden-480"><%=rsSubscribers.getString("company")%></td>
                                                                                                                                                <%
                                                                                                                                                if (rsSubscribers.getString("status").equals("Enabled"))
                                                                                                                                                            label="label-success";
                                                                                                                                                if (rsSubscribers.getString("status").equals("Disabled"))
                                                                                                                                                            label="label-default";
                                                                                                                                                %>
                                                                                                                                                <td><span class="label <%=label%> "><%=rsSubscribers.getString("status")%></span></td>
                                                                                                                                        </tr>
                                                                                                                                    <%
                                                                                                                                    }
                                                                                                                                    %>
                                                                                                                                        
                                                                                                                                </tbody>
                                                                                                                        </table>
                                                                                                                </div>
