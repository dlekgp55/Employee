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

<title>form.jsp</title>
<script type="text/javascript">

	var depts = ['ngRoute',
				 'ngAnimate',
				 'ngTouch',
				 'angular-loading-bar'           
	];            
	var app = angular.module("employeeApp", depts);
	
	app.controller("mainController", function($scope,$http) {
		console.log("mainController...");
		
		$scope.method ="POST";				//method 기본 선택은 post
		$scope.data = "data";
		$scope.error = "error";
		
		function successCallback(response) {				/* response 이름은 아무거나 해도 된다. response에 결과 값이 호출 된다.*/
			console.dir(response);
			$scope.data = response.data;
		};
		
		function errorCallback(response) {
			console.dir(response);
			$scope.error = response.data;
		};
		
		$scope.getCityAll = function() {
			var url = "/Employee/city";
			console.log("url = " + url);
			
			$scope.data = "";
			$scope.error = "";
			
			switch ($scope.method) {
			case "GET":	
				alert("GET call...");
				var ajax = $http.get(url);
				ajax.then(successCallback, errorCallback);
				
				break;
				
			case "POST":	
				alert("POST call...");
				var ajax = $http.post(url);
				ajax.then(successCallback, errorCallback);
				break;
				
			case "PUT":	
				alert("PUT call...");
				var ajax = $http.put(url);
				ajax.then(successCallback, errorCallback);
				
				break;
				
			case "DELETE":	
				alert("DELETE call...");
				
				var config = {							/* delete는 js키워드랑 error가 나서 config로 설정한다. */
					method : "DELETE",
					url : url
				};
				
				var ajax = $http(config);
				ajax.then(successCallback, errorCallback);
				break;

			default:
				break;
			}
		};

	});
	
</script>
</head>
<body data-ng-controller="mainController" class="container">
<h1>{{method}}</h1>
<form class="form-inline" data-ng-submit="getCityAll()">		<!-- form-inline을 주면 기존에 설정했던 rows="10"으로 돌아 간다. -->
	<div class="form-group">				<!-- form-group bootstrap 적용 , 아래에 form-control도 같이-->
		<select data-ng-model="method" class="form-control">	<!-- controller의 method 변경할수 있다 -->
			<option >GET</option>
			<option>POST</option>
			<option>PUT</option>
			<option>DELETE</option>
		</select>
	</div>
	<div class="form-group">
		<textarea rows="10" class="form-control">
			{{data}}
		</textarea>
		<textarea  rows="10" class="form-control">
			{{error}}
		</textarea>
	</div>
	<input class="btn btn-info" type="submit" value="getCityAll()">

</form>

</body>
</html>