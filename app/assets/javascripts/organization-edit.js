angular.module('it.organization.edit', ['it.resources', 'ui.select2'])
.controller('EditOrganizationCtrl', function($scope, $routeParams, $location, Organization, Innovation) {
	var remapCategories = function() {
		if ($scope.organization && $scope.organization.$resolved
			&& $scope.innovations && $scope.innovations.$resolved) {
		}
	}
	$scope.innovations = Innovation.query(remapCategories);
	var organizationId = $routeParams.id;
	if (organizationId) {
		$scope.organization = Organization.get({ id: organizationId }, function(org) {
			$scope.title = 'Editing ' + org.name;
			remapCategories();
		});

	} else {
		$scope.organization = new Organization();
		$scope.title = 'Create Organization';
	}

	var successfulUpdate = function() {
		$location.path('#/');
	};
	$scope.saveOrganization = function() {
		if ($scope.organization.id) {
			$scope.organization.$update(successfulUpdate);
		} else {
			$scope.organization.$save(successfulUpdate);
		}
	};
	$scope.deleteOrganization = function() {
		$scope.organization.$delete();
	};
});