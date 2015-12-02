/**
 * @author java
 */


app.config(function($routeProvider) {			/* maingController가 실행되고 부분 화면을 넣기 위해 route가 실행 된다. */
		console.log("/append config...");		
		
		$routeProvider.when("/append",{					/* http://localhost:8080/Employee/city/main.html#/list */
			controller: "appendController",			/* var detailController 객체 호출 */
			templateUrl: "append.html"				
	/*http://localhost:8080/Employee/city/main.html 의 상대 경로에서 불러온다.즉 같은 경로 city/detail.html을 불러온다.*/
		
		});											
		
	});
	
app.controller('appendController', function($scope, $http, URL) { /* listController 호출 */
	console.log("appendController...");
	console.log("URL.POST_ITEM_APPEND = " + URL.POST_ITEM_APPEND);
	
	$scope.$parent.title = "Append City View";			//이것의 부모의 title 설정
	

});
