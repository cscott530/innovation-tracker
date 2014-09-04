angular.module('it.organizations', ['it.resources'])
.controller('OrganizationsCtrl', function($scope, Organization, Innovation) {
	$scope.innovations = Innovation.query();
	$scope.organizations = Organization.query();
});