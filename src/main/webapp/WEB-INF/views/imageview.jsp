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
    <!--인쇄 스크립트-->
    <script>
        var initBodyHtml;
        function printPage(){ //인쇄 메소드
            window.print();
        }
        function  beforprint(){
            initBodyHtml = document.body.innerHTML;//본문 내용
            document.body.innerHTML = document.getElementById("print").innerHTML;//id가 print인 영역을 본문으로 재지정
        }
        function  afterprint(){
            document.body.innerHTML = initBodyHtml; //원래 내용으로 다시 본물을 재지정
        }
        window.onbeforeprint =beforprint; //프린트하기 전의 설정
        window.onafterprint = afterprint;//프린트한 후의 설정
    </script>
</head>

<body>
직접걷으로 이미지를 지정하고 변경 불가능 회사로고등 웹상에서 변경없는 이미지 사용<br>
<div id="print">
<img src="/images/photo.jpg" width="300" height="300" alt="이미지가 없습니다"/><br>
</div>
<img src="/images/s.jpg" width="300" height="300" /><br>
상품등 각 데이터별로 이미지를 변경해서 사용<br>
<img src="/images/${file}" width="300" height="300" alt="파일이없습니다"/><br>
<button type="button" onclick="printPage();">인쇄</button>
</body>
</html>