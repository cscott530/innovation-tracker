angular.module('it.organization.edit', ['it.resources', 'ui.select2'])
.controller('EditOrganizationCtrl', function($scope, $routeParams, $location, Organization, Category) {
	var remapCategories = function() {
		if ($scope.organization && $scope.categories) {
			var flattenedScopedInnovations = [];
			angular.forEach($scope.categories, function(category, i) {
				angular.forEach(category.innovations, function(innovation, j) {
					flattenedScopedInnovations.push(innovation);
				});
			});
			$scope.organization.innovations = $.map($scope.organization.innovations, function(i, innovation) {
				for (var j = 0; j < flattenedScopedInnovations.length; j++) {
					if (flattenedScopedInnovations[j].id == innovation.id) {
						return flattenedScopedInnovations[j];
					}
				}
				return null;
			});
		}
	}
	$scope.categories = Category.query(remapCategories);
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