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

<title>ngTouch.jsp</title>
<style type="text/css">
	.swipe-box {
		height : 200px;
		background-color: red;
		border : 1px solid black;
	}

</style>


<script type="text/javascript">

	var depts = [
				'ngRoute',
				'ngAnimate',
				'ngTouch',
				'angular-loading-bar'           
	];            
	var app = angular.module("employeeApp", depts);
	
	app.controller("mainController", function($scope,$http) {
		console.log("mainController...");
		
		$scope.swipeLeft = function(e) {
			console.log("swipeLeft()...");
			console.dir(e);									/* json 형식으로 콘솔에 찍어줌(파이어 폭스 우측란). 네모 박스 */
			$(e.target).css('border-radius', '0px');		/* e.target = event기능 */
			$scope.msg = "ng-swipe-left fired..."
		};
		
		$scope.swipeRight = function(e) {
			console.log("swipeRight()...");
			console.dir(e);
			$(e.target).css('border-radius', '50px');		/* e 기능에 대해서 radius를 추가한다. */
			
			$scope.msg = "ng-swipe-right fired..."
		};
		
		
		/*
		 * image test
		 */
		 
		 var number = 5;
		 $scope.imgURL = "http://www.placehold.it/400x400?text=" + number;
		
		 $scope.imgSwipeLeft = function(e) {
				console.log("imgSwipeLeft()...");
				console.dir(e);
				number++;
				if (number>10) {
					number= 0;	
				}
				$scope.imgmsg = "ng-swipe-left fired...";
				$scope.imgURL = "http://www.placehold.it/400x400/ff0000/0000ff?text="+number;
			};
				 
			$scope.imgSwipeRight = function(e) {
				console.log("imgSwipeRight()...");
				console.dir(e);
				number--;
				if (number<0) {
					number= 10;	
				}
				$scope.imgmsg = "ng-swipe-right fired...";
				$scope.imgURL = "http://www.placehold.it/400x400/ff00ff/0000ff?text="+number;
			};

				
		
	});
	
</script>
</head>
<body data-ng-controller="mainController" class="container">
	<div ng-swipe-left="swipeLeft($event)"	
		ng-swipe-right="swipeRight($event)"
		 class="swipe-box">			<!-- 내장 event 객체를 넘긴다 -->
	</div>
	<hr>
	<p>{{msg}}</p>
	<hr>
	<img  ng-swipe-left="imgSwipeLeft($event)"	
		  ng-swipe-right="imgSwipeRight($event)"
		  ondragstart="return false"		
		  draggable="false" class="img_responsive" alt="{{imgURL}}" data-ng-src="{{imgURL}}">	<!-- ondragstart -드래그 금지  -->	<!-- 드레그 안되게 했음, data-ng-src로 하면 네트워크에서 error 안남 -->
	<hr>
	<p>{{imgmsg}}</p>
	


	
</body>
</html>