angular.module('it.organization.edit', ['it.resources', 'ui.select2'])
.controller('EditOrganizationCtrl', function($scope, $routeParams, $location, Organization, Category) {
	$scope.categories = Category.query();
	var organizationId = $routeParams.id;
	if (organizationId) {
		$scope.organization = Organization.get({ id: organizationId }, function(org) {
			$scope.title = 'Editing ' + org.name;
			$scope.organization.innovations = $.map($scope.organization.innovations, function(orgInn, index) {
				return index;
			});
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
		//TODO confirmation
		$scope.organization.$delete();
		successfulUpdate();
	};
});