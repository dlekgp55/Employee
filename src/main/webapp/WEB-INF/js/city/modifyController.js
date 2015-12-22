/**
 * @author java
 */


app.config(function($routeProvider) {			/* maingController가 실행되고 부분 화면을 넣기 위해 route가 실행 된다. */
		console.log("/modify config...");		
		
		$routeProvider.when("/modify/:id",{					
			/* http://localhost:8080/Employee/city/main.html#/list */
			/*:다음에 변수를 준다. 이름은 아무거나 줘도 된다.지금은 id가 넘어오니 id라 지칭함.*/
			controller: "modifyController",			/* var detailController 객체 호출 */
			templateUrl: "modify.html"				
	/*http://localhost:8080/Employee/city/main.html 의 상대 경로에서 불러온다.즉 같은 경로 city/detail.html을 불러온다.*/
		
		});											
		
	});
	
app.controller('modifyController', function($scope, $http, URL, $routeParams, $location) { /* listController 호출 */
	/*$scope 객체 생성, $http 송신 방식, URL 주소, $routeParams 위의 routeProvider의 변수(:id), $location 특정 위치로 감*/
	console.log("modifyController...");
	console.log("URL.PUT_ITEM_MODIFY_BASE = " + URL.PUT_ITEM_MODIFY_BASE);
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);
	
	$scope.$parent.title = "Modify City View";			//이것의 부모의 title 설정
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id);
	
	ajax.then(function(value) {				/*3개 뜨는데 마지막 function은 필요 없다.value는 위의 ajax로 실행시킨 쿼리의 return값이 자동으로 입력 된다.*/
		console.dir(value);
		$scope.city = value.data;
		/*city 아래 단의 객체들은 자동으로 연동된다.자바처럼*/
	}, function(reason) {
		console.dir(reason);
		alert("error...");
	});
	
	$scope.submit = function() {
		var ajax =	$http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.city.id,{
		/*var ajax 로 하면 영역 안의 새로운 변수 생성. 위의 var ajax와 다름. var를 제외하고 ajax만 쓰면 위의 것을 가지고 옴*/
			id 			: $scope.city.id,
			name		: $scope.city.name,
			countryCode : $scope.city.countryCode,
			district 	: $scope.city.district,
			population 	: $scope.city.population
		});
		
		ajax.then(function(response) {	/*3개 뜨는데 마지막 function은 필요 없다.response는 위의 ajax로 실행시킨 쿼리의 return값이 자동으로 입력 된다.*/
			console.dir(response.data);
			$location.path("/list");
		},function(response){
			console.dir(response.data);
		});
	};
	
});
