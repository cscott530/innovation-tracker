var resources = angular.module('it.resources', ['ngResource'])

resources.factory('Innovation', function($resource) {
	return $resource('/innovations/:id', { id: '@id'},
		{ update: { method: 'PUT' }});
});
resources.factory('Category', function($resource) {
	return $resource('/categories/:id', { id: '@id'},
		{ update: { method: 'PUT' }});
});
resources.factory('Organization', function($resource) {
	return $resource('/organizations/:id', { id: '@id'},
		{ update: { method: 'PUT' }});
});