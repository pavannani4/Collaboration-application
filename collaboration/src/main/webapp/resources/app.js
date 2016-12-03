angular.module('sortApp',[]).controller('mainController',function($scope,$http){
	$scope.getStudent=function()
	{
		console.log("im in getProductList");
		$http({method:'GET',url:'listStudent'}).success(function(data,status,headers,config)
				
		{
		//data=${studentList};
			$scope.studls=JSON.parse(JSON.stringify(data));
			//$scope.studls=data;
			
			
			for(var c=0;c<$scope.studls.length;c++)
				{
					var cc=$scope.studls[c];
					console.log(cc);
					console.log($scope.studls);
					return $scope.studls;
				}
		
			
		});
	};

});


