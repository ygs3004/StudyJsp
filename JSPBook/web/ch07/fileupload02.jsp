<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>File Upload</title>
</head>
<body>
  <form name="fileForm" method="post" enctype="multipart/form-data"
        action="fileupload02_process.jsp">
    <p>이 름1 : <input type="text" name="name1">
       제 목1 : <input type="text" name="subject1">
       파 일1 : <input type="file" name="filename1">

    <p>이 름2 : <input type="text" name="name2">
       제 목2 : <input type="text" name="subject2">
       파 일2 : <input type="file" name="filename2">

    <p>이 름3 : <input type="text" name="name3">
       제 목3 : <input type="text" name="subject3">
       파 일3 : <input type="file" name="filename3">

    <p><input type="submit" value="파일 올리기">
  </form>
</body>
</html>