<html>
<%@ page language="java" import="javazoom.upload.*,java.util.*,sample.progress.MyUploadListener" %>
<%@ page errorPage="ExceptionHandler.jsp" %>
<jsp:useBean id="upListener" scope="session" class="sample.progress.MyUploadListener"/>
<jsp:useBean id="upBean" scope="session" class="javazoom.upload.UploadBean" >
  <jsp:setProperty name="upBean" property="folderstore" value="C:/Program Files/Apache Software Foundation/Tomcat 8.0/webapps/rsvp/WEB-INF/images"/>
  <jsp:setProperty name="upBean" property="parser" value="<%= MultipartFormDataRequest.STRUTSPARSER %>"/>
  <jsp:setProperty name="upBean" property="parsertmpdir" value="C:/Program Files/Apache Software Foundation/Tomcat 8.0/webapps/rsvp/WEB-INF/images"/>
  <% upBean.addUploadListener(upListener); %>
</jsp:useBean>
<head>
<title>Samples : Display Upload progress status</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript"><!--
function openStatus()
{
  if (document.upform.uploadfile.value.length > 0)
  {
    window.open('status.jsp?nocache=<%= System.currentTimeMillis() %>','UploadStatus','scrollbars=no,status=no,width=360,height=90');
    document.upform.submit();
  }
  else
  {
    alert("Select a file to attach");
  }
}
//--></script>
</head>
<body bgcolor="#FFFFFF" text="#000000">
<ul><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
<%
      if (MultipartFormDataRequest.isMultipartFormData(request))
      {
         // Uses MultipartFormDataRequest to parse the HTTP request.
         Vector listeners = new Vector();
         listeners.addElement(upListener);
	 String err = null;
	 MultipartFormDataRequest mrequest = null;
	 try
	 {
         	mrequest = new MultipartFormDataRequest(request,listeners);
	 } catch (Exception e)
	  {
	  	// Cancel current upload (e.g. Stop transfert)
		upListener.cancel();
		err = e.getMessage();
	  }
         String todo = null;
         if (mrequest != null) todo = mrequest.getParameter("todo");
         else throw new Exception(err);
	 if ( (todo != null) && (todo.equalsIgnoreCase("upload")) )
	 {
                Hashtable files = mrequest.getFiles();
                if ( (files != null) || (!files.isEmpty()) )
                {
                    UploadFile file = (UploadFile) files.get("uploadfile");
                    out.println("<li>Form field : uploadfile"+"<BR> Uploaded file : "+file.getFileName()+" ("+file.getFileSize()+" bytes)"+"<BR> Content Type : "+file.getContentType());
                    // Uses the bean now to store specified by jsp:setProperty at the top.
                    upBean.store(mrequest, "uploadfile");
                }
                else
                {
                  out.println("<li>No uploaded files");
                }
	 }
         else out.println("<BR> todo="+todo);
      }
%>
</font></ul>
<form method="post" action="upload.jsp" name="upform" enctype="multipart/form-data">
  <table border="0" cellspacing="1" cellpadding="1" align="center">
    <tr>
      <td align="left" nowrap><font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><b>Select
        a file to upload : </b>(Progress pop-up will be displayed on &quot;Upload&quot;
        button click)</font></td>
    </tr>
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
        <input type="file" name="uploadfile" size="50">
        </font></td>
    </tr>
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
	<input type="hidden" name="todo" value="upload">
        <input type="button" name="Submit" value="Upload" onClick="openStatus()">
        <input type="reset" name="Reset" value="Cancel">
        </font></td>
    </tr>
  </table>
  <br>
  <br>
  <table width="90%" border="0" cellspacing="1" cellpadding="0" align="center">
    <tr>
      <td bgcolor="#666666">
        <table width="100%" border="0" cellspacing="1" cellpadding="0" align="center">
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#0000FF">&nbsp;HTML
              tags :</font></b></font></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&lt;<b>form</b>
              <b>method</b>=&quot;<b><font color="#FF0000">post</font></b>&quot;
              <b>action</b>=&quot;<b><font color="#FF0000">upload.jsp</font></b>&quot;
              name=&quot;upload&quot; <b>enctype</b>=&quot;<b><font color="#FF0000">multipart/form-data</font></b>&quot;&gt;</font></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&lt;<b>input</b>
              <b>type</b>=&quot;<b><font color="#FF0000">file</font></b>&quot;
              <b>name</b>=&quot;<font color="#FF0000"><b>uploadfile</b></font>&quot;
              size=&quot;50&quot;&gt;</font></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center"><font size="-1" face="Courier New, Courier, mono">Copyright
    &copy; <a href="http://www.javazoom.net" target="_blank">JavaZOOM</a> 1999-2003</font></p>
</form>
</body>
</html>
