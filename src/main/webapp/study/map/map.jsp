<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true" %>	 	<!-- ssession 이 안만들어 지도록, trim - 웹에서 source보기에서 빈공간 없게 보이게 함. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %><!-- jspf는 조각 부분을 의미함. -->

<script src="http://maps.google.com/maps/api/js"></script>				<!-- 구글맵 쓰려고 가져옴 -->

<title>map.jsp</title>
<script type="text/javascript">

	var depts = ['ngRoute',
				 'ngAnimate',
				 'ngTouch',
				 'angular-loading-bar',
				 'ngMap'									/* ngMap추가 */		
	];            
	var app = angular.module("employeeApp", depts);
	
	app.controller("mainController", function($scope,$http) {
		console.log("mainController...");
		
		
		
	});
	
</script>
</head>
<body data-ng-controller="mainController" class="container">


<!--   <ng-map center="37,128" zoom="12"></ng-map> -->
  <div data-ng-map center="37,128" zoom="12"></div>


</body>
</html>