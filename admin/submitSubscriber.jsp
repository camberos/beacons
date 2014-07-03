<%@ page language="java"
    import="java.sql.*, manejodb.ManejadoresTablas"
    errorPage="error.jsp" 
%>

<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>
<%
          
          String firstName = request.getParameter("firstName");
          String lastName = request.getParameter("lastName");
          String Emails = request.getParameter("Emails");
          String company = request.getParameter("company");
          String contact_number = request.getParameter("contact_number");

          //out.print(firstName+","+lastName+","+Emails+","+company+","+contact_number);
          //String data="123";
          String data= "nextval('subscribers_sub_id_seq'::regclass), '"+Emails+"', '"+lastName+"','"+firstName+"','"+company+"','"+contact_number+"' ";
          mtbl.setConectar();
          mtbl.setInsertar("subscribers",data);
          mtbl.setDesconectar(); 
          
          out.print("<div class=\"alert alert-success\">");
          out.print("<button class=\"close\" data-dismiss=\"alert\"></button>");
          out.print("<strong>Success!</strong> The subscriber <strong>"+firstName+" "+lastName+"</strong> was inserted.");
          out.print("</div>");
								

          
%>

