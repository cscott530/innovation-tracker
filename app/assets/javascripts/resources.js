var resources = angular.module('it.resources', ['ngResource'])

resources.factory('Innovation', function($resource) {
	return $resource('/innovations/:id');
});
resources.factory('Category', function($resource) {
	return $resource('/categories/:id');
});
resources.factory('Organization', function($resource) {
	return $resource('/organizatios/:id');
});