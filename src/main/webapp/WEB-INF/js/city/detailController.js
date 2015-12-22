/**
 * @author java
 */


app.config(function($routeProvider) {			/* maingController가 실행되고 부분 화면을 넣기 위해 route가 실행 된다. */
		console.log("/detail config...");		
		
		$routeProvider.when("/detail/:id",{					/* http://localhost:8080/Employee/city/main.html#/list */
			/*:다음에 변수를 준다. 이름은 아무거나 줘도 된다.지금은 id가 넘어오니 id라 지칭함.*/
			controller: "detailController",			/* var detailController 객체 호출 */
			templateUrl: "detail.html"				
	/*http://localhost:8080/Employee/city/main.html 의 상대 경로에서 불러온다.즉 같은 경로 city/detail.html을 불러온다.*/
				/*:다음에 변수를 준다. 이름은 아무거나 줘도 된다.지금은 id가 넘어오니 id라 지칭함.*/
		});											
		
	});
	
app.controller('detailController', function($scope, $http, URL, $routeParams) { /* listController 호출 */
	/*$scope 객체 생성, $http 송신 방식, URL 주소, $routeParams 위의 routeProvider의 변수(:id)*/
	console.log("detailController...");
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);
	$scope.$parent.title = "Detail City View";			//이것의 부모의 title 설정
	

});
