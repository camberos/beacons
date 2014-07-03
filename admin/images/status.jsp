<%@ page language="java" import="java.io.*,java.util.*,sample.progress.MyUploadListener" %>
<%@ page errorPage="ExceptionHandler.jsp" %>
<jsp:useBean id="upListener" scope="session" class="sample.progress.MyUploadListener"/>
<html>
<% String currentStatus = "Upload progress : ";
  if (!upListener.isFileUploadCancelled()) {
  if (!upListener.isFileUploaded()) { %>
<META HTTP-EQUIV=Refresh CONTENT="1; URL=status.jsp?nocache=<%= System.currentTimeMillis() %>">
<% } else { upListener.reset(); %>
  <script>window.close();</script>
<% } } else {
     currentStatus = "Upload cancelled : ";
     upListener.reset(); } %>
<head>
<title>Upload Status</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFFF" text="#000000">
<br>
<table border="0" cellspacing="1" cellpadding="1" align="center">
  <tr>
    <td><b><font face="Verdana, Arial, Helvetica, sans-serif"><%= currentStatus %></font></b></td>
    <td nowrap><b><font size=-1 face="Verdana, Arial, Helvetica, sans-serif" color="#FF0000">
      <%= upListener.getUploadedKBLength() %> KB (<%= upListener.getUploadedRatio() %>
      %)</font></b></td>
  </tr>
</table>
</body>
</html>
