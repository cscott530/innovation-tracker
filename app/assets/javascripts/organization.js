angular.module('it.organization.view', ['it.resources'])
.controller('ViewOrganizationCtrl', function($scope, $routeParams, Organization, Innovation) {
	var organizationId = $routeParams.id;
	$scope.organization = Organization.get({ id: organizationId });
});