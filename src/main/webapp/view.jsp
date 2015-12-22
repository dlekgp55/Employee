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

<title>view.jsp</title>

</head>
<body >
<form action="check.jsp" method="get" name="check">
	<label for="m1">한식</label><input type="checkbox"	name="m1" id="m1" value="한식"><p>
	<label for="m2">중식</label><input type="checkbox" 	name="m1" id="m1" value="중식"><p>
	<label for="m3">일식</label><input type="checkbox"name="m1" id="m1" value="일식"><p>
	<label for="m4">분식</label><input type="checkbox" 	name="m1" id="m1" value="분식"><p>
	<label for="m5">레스토랑</label><input type="checkbox" 	name="m1" id="m1" value="레스토랑"><p>
	<label for="m6">고기</label><input type="checkbox" 	name="m1" id="m1" value="고기"><p>
	<label for="m7">치킨</label><input type="checkbox" 	name="m1" id="m1" value="치킨"><p>
	<label for="m8">피자</label><input type="checkbox" 	name="m1" id="m1" value="피자"><p>
	<label for="m9">카페</label><input type="checkbox" 	name="m1" id="m1" value="카페"><p>
	<input type="submit" value="확인">


</body>
</html>