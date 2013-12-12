#= require vendor/jquery.js
#= require vendor/bootstrap.js
#= require vendor/angular/angular.js
#= require vendor/angular/angular-route.js
#= require_tree client 
#= require_tree shared

angular.module('gw2iClient', [
  'ngRoute',
  'gw2iClient.controllers',
  'gw2iClient.filters',
  'gw2iClient.services',
  'gw2iClient.directives'
])
.config ($routeProvider, $locationProvider) ->
  $routeProvider
 
    .when '/view1',
      templateUrl: 'partials/partial1'
      controller:  'MyCtrl1'
 
    .when '/view2',
      templateUrl: 'partials/partial2'
      controller:  'MyCtrl2'
 
    .otherwise redirectTo: '/view1'
 
  $locationProvider.html5Mode true
