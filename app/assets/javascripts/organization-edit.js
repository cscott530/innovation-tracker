angular.module('it.organization.edit', ['it.resources', 'ui.select2'])
.controller('EditOrganizationCtrl', function($scope, $routeParams, $location, Organization, Category) {
	$scope.categories = Category.query(function(cats) {
		if (cats && cats.length > 0) {
			angular.forEach(cats, function(cat, i) {
				$scope.innovations = $scope.innovations.concat(cat.innovations);
			});
		}
	});
	$scope.innovations = [];
	var organizationId = $routeParams.id;
	if (organizationId) {
		$scope.organization = Organization.get({ id: organizationId }, function(org) {
			$scope.title = 'Editing ' + org.name;
			$scope.organization.innovations = $.map($scope.organization.innovations, function(orgInn, index) {
				return orgInn.id;
			});
		});

	} else {
		$scope.organization = new Organization();
		$scope.title = 'Create Organization';
	}

	var successfulUpdate = function() {
		$location.path('#/');
	};

	var convertIdsToInnovations = function(ids) {
		return $.map(ids, function(id, index) {
			for (var i = 0; i < $scope.innovations.length; i++) {
				if ($scope.innovations[i].id == id) {
					return $scope.innovations[i];
				}
			}
			return null;
		});
	}
	$scope.saveOrganization = function() {
		$scope.organization.innovations = convertIdsToInnovations($scope.organization.innovations);
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