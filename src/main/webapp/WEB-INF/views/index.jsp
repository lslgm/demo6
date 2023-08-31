<!--
    파일명 :
    기 능 : 
    직성일 :
    작성자 :
    수정사항 :
    FixMe :
    ToDo :
-->
<%@ page contentType="text/html; charset=UTF-8"  language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <form action="/fileupload" method="post" enctype="multipart/form-data">
        <input type="file" name="file"><br>
        <input type="submit" value="전송">
    </form>
</body>
</html>