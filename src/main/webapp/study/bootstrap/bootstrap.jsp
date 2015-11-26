<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf"%><!-- jspf는 조각 부분을 의미함. -->
<title>bootstrap.jsp</title>
<style type="text/css">
img {
	width: 100%;
	height: 100px;
}
</style>


</head>
<script type="text/javascript">
	var app = angular.module('employeeApp', []);
	app.controller('examController', function($scope) {

	});
</script>


<body data-ng-controller="examController">
	<div class="container">
		<!-- 화면이 커지면 약간의 센터링이 된다.(약간의 여백 생김 ex 네이버)-->

		<div class="row">
			<div class="col-sm-6">
				<!-- 화면을 12등분 함.6 이면 반.  -->
				<img alt="xxx"
					src="http://www.placehold.it/100X100/ff0000/0000ff?text=50%">
			</div>
			<div class="col-sm-6">
				<img alt="xxx"
					src="http://www.placehold.it/100X100/ff00ff/0000ff?text=50%">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<img alt="xxx"
					src="http://www.placehold.it/100X100/00ff00/0000ff?text=100%">
			</div>

		</div>


	</div>

	<div class="container-fluid">
		<!-- 화면의 100%.(ex 구글) -->
		<div class="row">
			<div class="col-sm-6">
				<!-- 화면을 12등분 함.6 이면 반.  -->
				<img alt="xxx"
					src="http://www.placehold.it/100X100/ff0000/0000ff?text=50%">
			</div>
			<div class="col-sm-6">
				<img alt="xxx"
					src="http://www.placehold.it/100X100/ff00ff/0000ff?text=50%">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<img alt="xxx"
					src="http://www.placehold.it/100X100/00ff00/0000ff?text=100%">
			</div>

		</div>
	</div>

</body>
</html>