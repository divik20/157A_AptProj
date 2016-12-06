var app = angular.module('swiftApp', []);
app.controller('listCtrl', function($scope, $http) {
  var baseName = "config/";
    // more angular JS codes will be here
        $http.get(baseName+"getApartments.php").success(function(data) {
            $scope.apartments = data.results;
        }).error(function(data){
          console.log("Error:" + data);
        });

    $scope.filterAptBy = function(filter){
      $http.post(baseName +"filteredApts.php", filter).success(function(data){
          console.log("Response:" + data.results);
          $scope.apartments = data.results;
      }).error(function(data){
          console.log("Error "  + data);
      });

    };



});
