<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="javazoom.download.*,javazoom.download.util.*, java.util.*" %>
<html>
<jsp:useBean id="downloadbean" class="javazoom.download.DownloadBean" scope="page" />
<%
	Repository repository = Repository.getInstance();
	Config conf = repository.get("uniqueid");
	downloadbean.setConfig(conf);
   	downloadbean.setVirtualPath(request.getContextPath()+"/download");
%>
<head>
<title>Download Sample : Folder</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.s {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt}
.xs {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt}
.xsb {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 8pt; font-weight: bold}
-->
</style>
</head>
<body bgcolor="#FFFFFF" text="#000000">
<div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b><font color="#FF0000">-
  Download4J : Folder sample -</font></b></font><br>
  <table border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td bgcolor="#FFCCCC">
        <table border="0" cellspacing="1" cellpadding="0">
          <tr bgcolor="#FFFFFF" class="xs"> 
            <td align="center"><font color="#990000"><b>Parameter</b></font></td>
            <td align="center"><font color="#990000"><b>Value</b></font></td>
          </tr>
          <tr bgcolor="#FFFFFF" align="center" class="xs"> 
            <td><font color="#990000">&nbsp;Config file &nbsp;</font></td>
            <td><font color="#990000">folder.xml</font></td>
          </tr>
          <tr bgcolor="#FFFFFF" align="center" class="xs"> 
            <td><font color="#990000">&nbsp;Virtual path&nbsp;</font></td>
            <td><font color="#990000">/download/</font></td>
          </tr>
          <tr bgcolor="#FFFFFF" align="center" class="xs"> 
            <td><font color="#990000">&nbsp;Folder path&nbsp;</font></td>
            <td><font color="#990000">&nbsp;WEB-INF/downloadroot/</font></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <font face="Verdana, Arial, Helvetica, sans-serif" size="-2"> </font><br>
</div>
<table border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td bgcolor="#CCCCCC">
      <table border="0" cellspacing="1" cellpadding="0" align="center">
        <tr align="center" bgcolor="#EEEEEE" class="s"> 
          <td><b>&nbsp;Sample&nbsp;</b></td>
          <td><b>Download link</b></td>
          <td><b>Counters</b></td>
          <td><b>Notes</b></td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td><b>1</b></td>
          <td><b>&nbsp;<a href="<%= downloadbean.getDownloadLink("globaltest.txt") %>">globaltest.txt</a>&nbsp;</b></td>
          <td>&nbsp;Total downloads: <%= downloadbean.getTotalDownload("globaltest.txt") %>&nbsp;</td>
          <td align="center">This file is downloaded through<br>
            the DownloadServlet.</td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td><b>2</b></td>
          <td><b>&nbsp;<a href="<%= downloadbean.getDownloadLink("protectedtest.pdf") %>">protectedtest.pdf</a>&nbsp;</b></td>
          <td>&nbsp;Total downloads: <%= downloadbean.getTotalDownload("protectedtest.pdf") %>&nbsp;<br>
            &nbsp;Max downloads: <%= downloadbean.getMaxDownload("protectedtest.pdf") %>&nbsp;</td>
          <td align="center">This PDF file is login/password protected for<br>
            download. There is a also a limit for download hits.<br>
            (<i>login=</i><font color="#000099">logintest</font> <i> password=</i><font color="#000099">passwordtest</font>)</td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td height="21"><b>3</b></td>
          <td height="21"><b>&nbsp;<a href="<%= downloadbean.getDownloadLink("ziptest.zip") %>">ziptest.zip</a>&nbsp;</b></td>
          <td height="21">&nbsp;Total downloads: <%= downloadbean.getTotalDownload("ziptest.zip") %>&nbsp;</td>
          <td height="21" align="center">This file is zipped on the fly on server-side 
            <br>
            (ziptest.html) and mapped to ziptest.zip url.</td>
        </tr>
        <tr align="center" bgcolor="#FFFFFF" class="s"> 
          <td><b>4</b></td>
          <td><a href="http://www.javazoom.net/jzservlets/jchatbox/jchatbox.html"><img src="<%= downloadbean.getDownloadLink("jchatbox.gif") %>&rand=<%= System.currentTimeMillis() %>" border="0"></a></td>
          <td>&nbsp;Total downloads: <%= downloadbean.getTotalDownload("jchatbox.gif") %>&nbsp;</td>
          <td align="center">Image on the left is downloaded through<br>
            the DownloadServlet.</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-2"><a href="foldersample.jsp?rand=<%= System.currentTimeMillis() %>"><br>
  refresh<br>
  </a></font></div>
</body>
</html>
