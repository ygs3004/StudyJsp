<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%@ page import="java.io.File" %><%
    String fileUploadPath = "C:\\upload";

    DiskFileUpload upload = new DiskFileUpload();

    List items = upload.parseRequest(request);

    Iterator params = items.iterator();

    while(params.hasNext()){
        FileItem item = (FileItem) params.next();
        File file = null;
        String fileName = "";
        if(item.isFormField()){
            String title = item.getString("UTF-8");
            out.println("<h3>"+title+"</h3>");
        }else{
            fileName = item.getName();
            fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
            file = new File(fileUploadPath+"/"+fileName);
            item.write(file);
        }

        out.println
        (
         "요청 파라미터 이름 : " + item.getFieldName() + "<br>"+
         "저장 파일 이름 : " + item.getName() + "<br>"+
         "파일 콘텐츠 타입 : " + item.getContentType() + "<br>"+
         "파일 크기 : " + file.length()
        );
    }


%>


</body>
</html>
