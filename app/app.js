var app = angular.module('swiftApp', ['anguFixedHeaderTable']);
app.controller('listCtrl', function($scope, $http) {
    var baseName = "config/";
    var suiteCache = {};
    var suiteCachePets = {};
    // more angular JS codes will be here
    $http.get(baseName + "getApartments.php").success(function(data) {
        console.log("Data: " + JSON.stringify(data.results));
        $scope.apartments = data.results;
    }).error(function(data) {
        console.log("Error:" + data);
    });



    $scope.switchBool = function(value) {
        $scope[value] = !$scope[value];
    };

    $scope.getQueryResults = function(){
      var queryJSON = {"query": $scope.form.query};
      console.log(JSON.stringify(queryJSON));

      $http.post(baseName + "executeQuery.php", queryJSON).success(function(data) {
          $scope.successTextAlert = "Query executed successfully!";
          $scope.showSuccessAlert = true;
          $scope.rows = data.results;
          $scope.cols = Object.keys($scope.rows[0]);
      }).error(function(data) {
        $scope.failureTextAlert = "Query Failed!";
        $scope.showFailureAlert = true;
      });

    };

    $scope.filterAptBy = function() {
        $scope.original = {};
        var filterQuery = {
            'aptName': $scope.form.aptName,
            'city': $scope.form.city,
            'state': $scope.form.state,
            'numberOfRooms': $scope.form.numberOfRooms,
            'priceMin': $scope.form.priceMin,
            'priceMax': $scope.form.priceMax,
            'roomSharing': $scope.form.roomSharing,
            'petsAllowed': $scope.form.petsAllowed,
            'schoolName': $scope.form.schoolName,
            'ratingMin': $scope.form.ratingMin,
            'ratingMax': $scope.form.ratingMax,
            'gradeLevel': $scope.form.gradeLevel,
            'hasNearbyTrans': $scope.form.hasNearbyTrans
        };
        clearForm();
        console.log("Options: " + JSON.stringify(filterQuery));

        $http.post(baseName + "filteredApts.php", filterQuery).success(function(data) {
            console.log("Response:" + data.results);
            $scope.apartments = data.results;
        }).error(function(data) {
            console.log("Error " + data);
        });

    };

    $scope.select = function(apt) {
        apt.expanded = !apt.expanded;

        var data = {
            "longitude": apt.longitude,
            "latitude": apt.latitude
        };
        var res = apt.longitude + "" + apt.latitude;
        if (apt.expanded && !suiteCache[res]) {
            suiteRequest(suiteCache, data, res);
        } else if (apt.expanded && suiteCache.res) {
            $scope.selectedRes = suiteCache.res;
        }
    };


    function suiteRequest(cache, data, res) {

        $http.post(baseName + "getSuites.php", data).success(function(data) {
            //console.log("Response:" + JSON.stringify(data.results));
            cache[res] = data.results;
            $scope.selectedRes = data.results;
        }).error(function(data) {
            console.log("Error " + data);
        });

    }

    function clearForm() {
        $scope.form = angular.copy($scope.original);

    }



}).controller('individualsCtrl', function($scope, $http) {
    var baseName = "../config/";
    $scope.individualTablesInit = function(tableName) {
        var table = {
            "table": tableName
        };
        $http.post(baseName + "process.php", table).success(function(data) {
            //console.log("Response:" + JSON.stringify(data.results));
            $scope[tableName] = data.results;
        }).error(function(data) {
            console.log("Error " + data);
        });

    };
});
