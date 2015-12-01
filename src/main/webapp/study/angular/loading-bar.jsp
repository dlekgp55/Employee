<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>	 	<!-- ssession 이 안만들어 지도록, trim - 웹에서 source보기에서 빈공간 없게 보이게 함. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %><!-- jspf는 조각 부분을 의미함. -->

<title>template.jsp</title>

<c:url var="URL_GET_LIST" value="/city/"/>
<c:url var="URL_GET_PAGE_BASE" value="/city/page/"/>
<script type="text/javascript">

	var depts = ['ngRoute',
			 	 'ngAnimate',
			 	 'ngTouch',
			 	 'angular-loading-bar'           
	];            
	var app = angular.module("employeeApp", depts);
	
	app.controller("mainController", function($scope,$http) {
		console.log("mainController...");
		
// 		var url ="${URL_GET_PAGE_BASE}" + 10;
		var url ="${URL_GET_LIST}";											//로딩바는 지연 시간이 길면 자동으로 왼쪽 상단에 나온다.
		
		var ajax = $http.get(url);
		ajax.then(function(response) {
			console.log("success...");
			console.dir(response);
			$scope.citys = response.data.citys;
		}, function(reason) {
			console.log("error...");
			console.dir(reason);
		}, function(value) {
			console.log("notify...");
			console.dir(value);
		});
		
		
	});
	
	
	
</script>
<style type="text/css">
	.myFade.ng-enter {							/* 시작되는 지점 */
		opacity : 0.0;							/* 투명도 0.0~1.0까지 */
/* 		transform : scale(0,0);		 */
		transform : rotate(-180deg);
		transition : 1s;					/* all은 default라서 안넣어도 된다. all 1s */
	}
	.myFade.ng-enter-active{					/* 끝나는 지점 */
		opacity : 1.0;							
/* 		transform : scale(1,1);		 */
		transform : rotate(0deg);
	}

</style>

</head>
<body data-ng-controller="mainController" class="container">
	<ul class="list-group">
		<li class="list-group-item myFade" data-ng-repeat="city in citys">
			<button class="btn btn-default">{{city.id}}</button>
			<button class="btn btn-success">{{city.name}}</button>
			<button class="btn btn-info">{{city.district}}</button>		  
		</li>
	</ul>
	<div class="panel-group">
	<div class="panel panel-primary" data-ng-repeat="city in citys">
		<div class="panel-heading">{{city.name}}</div>
		<div class="panel-body">
			{{city.id}}
			{{city.district}}
			{{city.population}}
		</div>
		<div class="panel-footer">{{city.countryCode}}</div>
	</div>
	</div>

</body>
</html>