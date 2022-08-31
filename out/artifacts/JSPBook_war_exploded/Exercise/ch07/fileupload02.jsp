<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>File upload</title>
</head>
<body>
<form name="fileForm" method="post" enctype="multipart/form-data"
      action="fileupload02_process.jsp">
    파 일 : <input type="file" name="filename"><br>
    <input type="submit" value="파일올리기">
</form>
</body>
</html>
