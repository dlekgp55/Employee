/**
 * @author java
 */


app.config(function($routeProvider) {			/* maingController가 실행되고 부분 화면을 넣기 위해 route가 실행 된다. */
		console.log("/modify config...");		
		
		$routeProvider.when("/modify",{					/* http://localhost:8080/Employee/city/main.html#/list */
			controller: "modifyController",			/* var detailController 객체 호출 */
			templateUrl: "modify.html"				
	/*http://localhost:8080/Employee/city/main.html 의 상대 경로에서 불러온다.즉 같은 경로 city/detail.html을 불러온다.*/
		
		});											
		
	});
	
app.controller('modifyController', function($scope, $http, URL) { /* listController 호출 */
	console.log("modifyController...");
	console.log("URL.PUT_ITEM_MODIFY_BASE = " + URL.PUT_ITEM_MODIFY_BASE);
	
	$scope.$parent.title = "Modify City View";			//이것의 부모의 title 설정
	

});
