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

        // WSTAWIEIE DANYCH Z PROGNOZY POGODY:
        // mozna utworzyc nowy kontrolere , ale uzyjemy istniejacego ('aticelControler' , ktory istnieje wyzej
        $http({
            method: 'GET',
            url: 'https://api.openweathermap.org/data/2.5/weather',
            params: {
                appid: '3fa1ec55ba4c2e76aa0615ecfd48875f',
                q: 'Lublin,pl',
                units: 'metric'

            }

        }).then(
            function (response) {
                $scope.weather = response.data
            }
        );
    };
});