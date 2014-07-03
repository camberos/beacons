<html>
<%@ page language="java" import="javazoom.upload.*,java.util.*,sample.progress.MyUploadListener" %>
<%@ page errorPage="ExceptionHandler.jsp" %>
<jsp:useBean id="upListener" scope="session" class="sample.progress.MyUploadListener"/>
<jsp:useBean id="upBean" scope="session" class="javazoom.upload.UploadBean" >
  <jsp:setProperty name="upBean" property="folderstore" value="d:/uploads"/>
  <jsp:setProperty name="upBean" property="parser" value="<%= MultipartFormDataRequest.STRUTSPARSER %>"/>
  <jsp:setProperty name="upBean" property="parsertmpdir" value="d:/temp"/>
  <% upBean.addUploadListener(upListener); %>
</jsp:useBean>
<head>
<title>Samples : Display Multiple Upload progress status</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="JavaScript"><!--
function openStatus()
{
  if (document.upform.uploadfile1.value.length > 0)
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
<body bgcolor="#FFFFFF" text="#000000">
<font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
<%
      if (MultipartFormDataRequest.isMultipartFormData(request))
      {
         Vector listeners = new Vector();
         listeners.addElement(upListener);
         MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request,listeners);
         String todo = null;
         if (mrequest != null) todo = mrequest.getParameter("todo");
	 if ( (todo != null) && (todo.equalsIgnoreCase("upload")) )
	 {
                // Uses the bean now to store specified by jsp:setProperty at the top.
                upBean.store(mrequest);
                // Displays info about uploaded files for this session.
                %>
                <b>Upload history : </b>
                <ul><font size="-2" face="Verdana, Arial, Helvetica, sans-serif">
                <%
                Vector history = upBean.getHistory();
                for (int i=0;i<history.size();i++)
                {
                    UploadParameters up = (UploadParameters) history.elementAt(i);
                    out.println("<li>Uploaded file : "+up.getFilename()+" ("+up.getFilesize()+" bytes)"+"<BR> Content Type : "+up.getContenttype());
                    out.println("<BR>StoreModel : "+up.getStoremodelname()+" ("+up.getStoreinfo()+")");
                }
                %>
                </font></ul>
                <%
	 }
	 else out.println("<BR> todo="+todo);
      }
%>
</font>
<form method="post" action="multipleupload.jsp" name="upform" enctype="multipart/form-data">
  <table width="70%" border="0" cellspacing="1" cellpadding="1" align="center">
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><b>Select
        a files to upload :</b></font></td>
    </tr>
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
        </font></td>
    </tr>
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
        <input type="file" name="uploadfile1" size="50">
        </font></td>
    </tr>
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
        <input type="file" name="uploadfile2" size="50">
        </font></td>
    </tr>
    <tr>
      <td align="left"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
        <input type="file" name="uploadfile3" size="50">
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
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif"><b><font color="#0000FF">&nbsp;Needed
              HTML tags :</font></b></font></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&lt;<b>form</b>
              <b>method</b>=&quot;<b><font color="#FF0000">post</font></b>&quot;
              <b>action</b>=&quot;<b><font color="#FF0000">MultipleUploads.jsp</font></b>&quot;
              name=&quot;upload&quot; <b>enctype</b>=&quot;<b><font color="#FF0000">multipart/form-data</font></b>&quot;&gt;</font></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&lt;<b>input</b>
              <b>type</b>=&quot;<b><font color="#FF0000">file</font></b>&quot;
              <b>name</b>=&quot;<font color="#FF0000"><b>uploadfile1</b></font>&quot;
              size=&quot;50&quot;&gt;</font></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&lt;<b>input</b>
              <b>type</b>=&quot;<b><font color="#FF0000">file</font></b>&quot;
              <b>name</b>=&quot;<font color="#FF0000"><b>uploadfile2</b></font>&quot;
              size=&quot;50&quot;&gt;</font></td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF"><font size="-1" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&lt;<b>input</b>
              <b>type</b>=&quot;<b><font color="#FF0000">file</font></b>&quot;
              <b>name</b>=&quot;<font color="#FF0000"><b>uploadfile3</b></font>&quot;
              size=&quot;50&quot;&gt;</font></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center"><font size="-1" face="Courier New, Courier, mono">Copyright
    &copy; <a href="http://www.javazoom.net" target="_blank">JavaZOOM</a> 1999-2003</font></p>
  </form>
</body>
</html>
