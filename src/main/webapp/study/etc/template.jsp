<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true" %>	 	<!-- ssession 이 안만들어 지도록, trim - 웹에서 source보기에서 빈공간 없게 보이게 함. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %><!-- jspf는 조각 부분을 의미함. -->
<script type="text/javascript">
 $(function(){
  $('.popup').click(function(event){
   var href = $(this).attr('href');
   var width = $(this).attr('data-width');
   var height = $(this).attr('data-height');
   
   //팝업창 생성
   window.open(href,'popup','width='+width+',height='+height+'');
   
   //기본이벤트 제거
   event.preventDefault();
  });
 });
 /* 이벤트 생성시 인라인 방식은 권장사항이 아니며 이벤트 연결은 script에서 연결 및 실행하도록 하는 것이 권장사항임 */
 
</script>
</head>
<body>
 <h1>인재 정보</h1>
 <ul>
  <li>
  <!-- 커스텀 데이터 속성 : 모두 data-라는 접두어로 시작하며, 유효성 검사기는 이 문자열로 시작하는 속성은 전부 무시. 
  단,최신 브라우저나 html5에 한정된다.-->
   <a href="a.jsp" 
    data-width="600" 
    data-height="400"
    title="Holiday Pay"
    class="popup">공휴일 급여 정책</a>
    <!-- data-width와 data-height는 커스텀 데이터 속성에 해당된다. 
    커스텀 데이터 속성은 실직적으로 html5부터 사용이 가능하며 태그내의 데이터를 임시로 보관하기 위한 용도로 주로 쓰인다.-->
    
  </li>
 </ul>
</body>
</html>
