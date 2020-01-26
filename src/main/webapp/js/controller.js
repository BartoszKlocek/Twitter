// nasza aplikacja
let articleApp = angular.module('articleApp', []);

// tworzymy kontroler, a w nim request ktory bedzie wysyłany na adres 'rest/articles'
articleApp.controller('articleController', function ($scope, $http) {
    $scope.init = function () {
        $http({
            method: 'GET',
            url: 'api/articles',
            params: {}

        }).then(
            function (response) {
                $scope.articles = response.data
            }
        );
    };
});