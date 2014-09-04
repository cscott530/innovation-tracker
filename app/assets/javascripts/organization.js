angular.module('it.organization.view', ['it.resources'])
.controller('ViewOrganizationCtrl', function($scope, Organization, Innovation) {
	$scope.innovations = Innovation.query();
	$scope.organizations = Organization.query();
});