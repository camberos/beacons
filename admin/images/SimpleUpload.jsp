
<%@ page language="java" import="javazoom.upload.*,java.util.*, java.sql.*, manejodb.ManejadoresTablas" %>
<%@ page errorPage="ExceptionHandler.jsp" %>


<jsp:useBean id="upBean" scope="page" class="javazoom.upload.UploadBean" >
  <jsp:setProperty name="upBean" property="folderstore" value="/var/lib/tomcat7/webapps/MailingLists/WEB-INF/images" />
</jsp:useBean>
<jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean>


<%
      

      if (MultipartFormDataRequest.isMultipartFormData(request))
      {
         // Uses MultipartFormDataRequest to parse the HTTP request.
         MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
         String todo = null;
         if (mrequest != null) todo = mrequest.getParameter("todo");
	     if ( (todo != null) && (todo.equalsIgnoreCase("upload")) )
	     {
                Hashtable files = mrequest.getFiles();
                if ( (files != null) && (!files.isEmpty()) )
                {
                    UploadFile file = (UploadFile) files.get("uploadfile");
                    //if (file != null) out.println("<li>Form field : uploadfile"+"<BR> Uploaded file : "+file.getFileName()+" ("+file.getFileSize()+" bytes)"+"<BR> Content Type : "+file.getContentType());
                    // Uses the bean now to store specified by jsp:setProperty at the top.
                    upBean.store(mrequest, "uploadfile");
                    //out.print("OK");
                    String data= "nextval('images_id_seq'::regclass), '"+file.getFileName()+"','"+file.getFileSize()+"','"+file.getContentType()+"'";
                    out.print(data);
                    mtbl.setConectar();
                    mtbl.setInsertar("images",data);
                    mtbl.setDesconectar(); 
                    response.sendRedirect("../admin_images.jsp");
                }
                else
                {
                  out.println("<li>No uploaded files");
                }
	     }
         else out.println("<BR> todo="+todo);
      }
%>




