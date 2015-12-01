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

<title>main.jsp</title>

<!-- URL Resolve -->
<c:url var="URL_GET_LIST" value="/city/"/>
<c:url var="URL_GET_PAGE_BASE" value="/city/page/"/>
<c:url var="URL_GET_ITEM_BASE" value="/city/"/>
<script type="text/javascript">
	
	var urls = {
			GET_LIST : 			"${URL_GET_LIST}",
			GET_PAGE_BASE : 	"${URL_GET_PAGE_BASE}",
			GET_ITEM_BASE : 	"${URL_GET_ITEM_BASE}"	
			
	};
	
	var depts = ['ngRoute',
				 'ngAnimate',
				 'ngTouch',
				 'angular-loading-bar'           
				];            
	var app = angular.module("employeeApp", depts);
	
	app.constant("URL", urls);
	
	app.controller("mainController", function($scope,$http, $location) {		/* $location이 있어야 아래의 location기능 */
		console.log("mainController...");
		$location.path("/list");							/* listController의 $routeProvider.when("/list" 이 수행됨. 이건 #이 필요 없음*/
	});														/* 아래의 data-ng-view로 정보가 들어간다. */
			
</script>

<c:url var="listController" value="/js/city/listController.js"/>
<c:url var="detailController" value="/js/city/detailController.js"/>
<script type="text/javascript" src="${listController}"></script>
<script type="text/javascript" src="${detailController}"></script>
</head>
<body data-ng-controller="mainController" class="container">
	<h1>{{title}}</h1>
	<div data-ng-view>

	</div>

</body>
</html>