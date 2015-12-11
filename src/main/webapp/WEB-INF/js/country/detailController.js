/**
 * @author java
 */


app.config(function($routeProvider) {			/* maingController가 실행되고 부분 화면을 넣기 위해 route가 실행 된다. */
		console.log("/detail config...");		
		
		$routeProvider.when("/detail",{					/* http://localhost:8080/Employee/city/main.html#/list */
			controller: "detailController",			/* var detailController 객체 호출 */
			templateUrl: "detail.html"				
	/*http://localhost:8080/Employee/city/main.html 의 상대 경로에서 불러온다.즉 같은 경로 city/detail.html을 불러온다.*/
		
		});											
		
	});
	
app.controller('detailController', function($scope, $http, URL) { /* listController 호출 */
	console.log("detailController...");
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	
	$scope.$parent.title = "Detail City View";			//이것의 부모의 title 설정
	

});
