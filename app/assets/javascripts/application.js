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
//= require ../../../vendor/assets/bower_components/angular-resource/angular-resource.js
//= require turbolinks
//= require_tree .

var app = angular.module('innovationtracker', ['it.resources']);
app.controller('IndexCtrl', function($scope, Innovation, Category, Organization) {
	$scope.categories = Category.query();
});