angular.module('it.innovations', ['it.resources'])
.controller('InnovationsCtrl', function($scope, Category) {
	$scope.categories = Category.query();
});