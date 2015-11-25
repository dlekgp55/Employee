<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko"  data-ng-app="employeeApp">   <!-- ng - HTML에 기능 부여 , app 최상위-->
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %><!-- jspf는 조각 부분을 의미함. -->

<title>city.jsp</title>

<script type="text/javascript">
	var app = angular.module('employeeApp',[]);
	
	
	app.controller('listController', function($scope) {		/* listController 호출 */
// 		alert("listController called...");
		
		$scope.result = 0;
	
		$scope.getData = function() {
			$scope.result += 1;
		};
		
		$scope.clear = function() {
			$scope.result = 0;	
		};
	});
</script>


</head>
<body data-ng-controller="listController">
<h1>City List</h1>

<button class="btn btn-primary" data-ng-click="getData()">GET</button>
<button class="btn btn-success" data-ng-click="clear()">Clear</button>
<hr>
<textarea id="result" rows="20" cols="50">{{result}}</textarea>


</body>
</html>