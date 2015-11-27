<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<!-- ng - HTML에 기능 부여 , app 최상위-->
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf"%><!-- jspf는 조각 부분을 의미함. -->

<title>city.jsp</title>
<c:url var="url_all" value="/city" />
<c:url var="url_page" value="/city/page/"/>

<script type="text/javascript">
	var app = angular.module('employeeApp', []);
	app.controller('listController', function($scope, $http) { /* listController 호출 */
		var url_all = "${url_all}";
		var url_page = "${url_page}";
		
		$scope.pageNo = 1;
		$scope.citys = [];
		$scope.paging = {};
		
		$scope.selectPage = function() {
			$http.get(url_page + $scope.pageNo).success(function(data, status, headers, config) {
				console.dir(data);
				$scope.citys = data.citys;
				$scope.paging = data.paging;
	// 			alert('success...');
			});	
		}
		
		$scope.selectPage();
		
		$scope.prevClick = function(pageNo) {
			$scope.pageNo = pageNo;
			$scope.selectPage();
// 			alert("pageNo = " + pageNo);
		};
		
		$scope.pageClick = function(pageNo) {
			$scope.pageNo = pageNo;
			$scope.selectPage();
// 			alert("pageNo = " + pageNo);
		};
		
		
		$scope.nextClick = function(pageNo) {
			$scope.pageNo = pageNo;
			$scope.selectPage();
// 			alert("pageNo = " + pageNo);
		};

	});
</script>


</head>
<body data-ng-controller="listController" class="container">
	<h1>City List</h1>

	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div class="tabel-responsive">
				<ul class="pagination">
					<li><a href="#" data-ng-click="prevClick(paging.firstPage-1)">Prev</a></li>
					<li data-ng-repeat="">
					
					</li>
					<li><a href="#" data-ng-click="nextClick(paging.lastPage+1)">Next</a></li>
				</ul>
				
				<table class="table table-striped table-hover">
					<!-- table-hover는 마우스 움직이면 리스트 색이 변한다. -->
					<thead>
						<th>No</th>
						<th>ID</th>
						<th>Name</th>
						<th>CountryCode</th>
						<th>District</th>
						<th>Population</th>
					</thead>
					<tbody>
						<tr data-ng-repeat="city in citys">
							<td>{{$index+1}}</td>
							<td>{{city.id}}</td>
							<td>{{city.name}}</td>
							<td>{{city.countryCode}}</td>
							<td>{{city.district}}</td>
							<td>{{city.population}}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-sm-2"></div>

	</div>

	<div class="row">
		<div class="col-sm-12">
			<div class="form-group">
				<textarea rows="20" class="form-control">
					{{citys}}
					{{paging}}
				</textarea>
				<!-- 위에 form-group을 주고 form-control -> width를 전체 차지함. -->
			</div>
		</div>
	</div>

</body>
</html>