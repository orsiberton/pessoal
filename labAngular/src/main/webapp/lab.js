'use strict';

// create the module and name it labApp
var labApp = angular.module('labApp', [ ]);

// configure our routes
labApp.config(function($routeProvider) {
    $routeProvider

    // route for the home page
    .when('/', {
        templateUrl : 'index.html',
        controller : 'mainController'
    })

    // route for the about page
    .when('/create-patient', {
        templateUrl : 'pages/patient/create-patient.html',
        controller : 'aboutController'
    });
});

// create the controller and inject Angular's $scope
labApp.controller('mainController', function($scope) {
    // create a message to display in our view
    $scope.message = 'Everyone come and see how good I look!';
});

labApp.controller('aboutController', function($scope) {
    $scope.message = 'Look! I am an about page.';
});
