// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require ../../../vendor/assets/bower_components/jquery/dist/jquery.js
//= require ../../../vendor/assets/bower_components/bootstrap/dist/js/bootstrap.js
//= require ../../../vendor/assets/bower_components/angular/angular.js
//= require ../../../vendor/assets/bower_components/angular-route/angular-route.js
//= require ../../../vendor/assets/bower_components/angular-resource/angular-resource.js
//= require ../../../vendor/assets/bower_components/select2/select2.js
//= require ../../../vendor/assets/bower_components/angular-ui-select2/src/select2.js
//= require turbolinks
//= require_tree .

angular.module('innovationtracker', ['ngRoute',
	'it.innovations',
	'it.organizations',
	'it.organization.edit',
	'it.organization.view',
	'it.resources'])
.config(function($routeProvider) {
	$routeProvider.when('/organizations', {
		templateUrl: 'partials/organizations.html',
		controller: 'OrganizationsCtrl',
		title: 'Organizations'
	}).when('/organization/new', {
		templateUrl: 'partials/organization-edit.html',
		controller: 'EditOrganizationCtrl'
	}).when('/organization/:id', {
		templateUrl: 'partials/organization.html',
		controller: 'ViewOrganizationCtrl'
	}).when('/organization/:id/edit', {
		templateUrl: 'partials/organization-edit.html',
		controller: 'EditOrganizationCtrl'
	}).when('/innovations/', {
		templateUrl: 'partials/innovations.html',
		controller: 'InnovationsCtrl'
	}).otherwise({
		redirectTo: '/organizations'
	});
}).run(function($rootScope) {
	$rootScope.$on("$routeChangeSuccess", function(currentRoute, previousRoute){
	    //Change page title, based on Route information
	    if (currentRoute.title) {
	    	$rootScope.subtitle = ' - ' + currentRoute.title;
	    } else {
	    	$rootScope.subtitle = '';
	    }
	});
});
