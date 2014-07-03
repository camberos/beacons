<%@
page import="java.servlet.*, 
javax.servlet.http.*,
java.io.*,
java.util.*,
com.lowagie.text.pdf.*,
com.lowagie.text.*"
import="java.sql.*, manejodb.ManejadoresTablas"
errorPage="error.jsp" 
%><jsp:useBean id="mtbl" scope="session" class="manejodb.ManejadoresTablas" ></jsp:useBean><%
        
        mtbl.setConectar();
        ResultSet rsSubscribers=mtbl.getQuery("select * from subscribers;");
        mtbl.setDesconectar(); 

        response.setContentType("application/pdf");
        Document document = new Document();
        try{
        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
        PdfWriter.getInstance(document, buffer); 
        document.open();

        //document.add(new Paragraph("List of Customers"));
          
        PdfPTable table = new PdfPTable(6);

        PdfPCell c1 = new PdfPCell(new Phrase("Id"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);

        c1 = new PdfPCell(new Phrase("Subscriber"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);

        c1 = new PdfPCell(new Phrase("Email"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);

        c1 = new PdfPCell(new Phrase("Contact Number"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);

        c1 = new PdfPCell(new Phrase("Company"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);

        c1 = new PdfPCell(new Phrase("Status"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        while(rsSubscribers.next()){
            table.addCell(rsSubscribers.getString("sub_id"));
            table.addCell(rsSubscribers.getString("firstname")+" "+rsSubscribers.getString("lastname"));
            table.addCell(rsSubscribers.getString("email"));
            table.addCell(rsSubscribers.getString("company"));
            table.addCell(rsSubscribers.getString("contact_num"));
            table.addCell(rsSubscribers.getString("status"));
        }
  

        document.add(table); 
        document.close(); 

        DataOutput dataOutput = new DataOutputStream(response.getOutputStream());
        byte[] bytes = buffer.toByteArray();
        response.setContentLength(bytes.length);
        for(int i = 0; i < bytes.length; i++)
        {
        dataOutput.writeByte(bytes[i]);
        }

        }catch(DocumentException e){
        e.printStackTrace();
        }

%>