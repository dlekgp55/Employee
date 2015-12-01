/**
 * @author java
 */


app.config(function($routeProvider) {			/* maingController가 실행되고 부분 화면을 넣기 위해 route가 실행 된다. */
		console.log("list config...");		
		
		$routeProvider.when("/list",{					/* http://localhost:8080/Employee/city/main.html#/list */
			controller: "listController",			/* var listController 객체를 불러온다. */
			templateUrl: "list.html"				
	/* main 밑에 javascript가 붙어 있는것 처럼 되어 있다. http://localhost:8080/Employee/city/main.html 의 상대 경로에서 불러온다.즉 같은 경로 city/list.html을 불러온다.*/
	});											
		
	});
	
app.controller('listController', function($scope, $http, URL) { /* listController 호출 */
	console.log("listController...");
	console.log("URL.GET_PAGE_BASE = " + URL.GET_PAGE_BASE);
	
	$scope.$parent.title = "List City View";
	
	$scope.pageNo = 1;
	$scope.citys = [];
	$scope.paging = {};
	
	$scope.selectPage = function() {			//선언부
		$http.get(URL.GET_PAGE_BASE + $scope.pageNo).success(function(data, status, headers, config) {
			console.dir(data);
			$scope.citys = data.citys;
			$scope.paging = data.paging;
// 			alert('success...');
		});	
	}
	
	$scope.selectPage();					//실행부 
	
	$scope.prevClick = function(pageNo) {
		console.log("prevClick()... pageNo = " + pageNo);
		$scope.pageNo = pageNo;
		$scope.selectPage();
// 			alert("pageNo = " + pageNo);
	};
	
	$scope.pageClick = function(pageNo) {
		console.log("pageClick()... pageNo = " + pageNo);
		$scope.pageNo = pageNo;
		$scope.selectPage();
// 			alert("pageNo = " + pageNo);
	};
	
	
	$scope.nextClick = function(pageNo) {
		console.log("nextClick()... pageNo = " + pageNo);
		$scope.pageNo = pageNo;
		$scope.selectPage();
// 			alert("pageNo = " + pageNo);
	};

});
