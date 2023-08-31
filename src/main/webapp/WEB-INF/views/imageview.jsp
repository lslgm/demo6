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
직접걷으로 이미지를 지정하고 변경 불가능 회사로고등 웹상에서 변경없는 이미지 사용<br>
<img src="/images/photo.jpg" width="300" height="300" alt="이미지가 없습니다"/><br>
<img src="/images/s.jpg" width="300" height="300" /><br>
상품등 각 데이터별로 이미지를 변경해서 사용<br>
<img src="/images/${file}" width="300" height="300" alt="파일이없습니다"/>
</body>
</html>