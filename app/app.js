var app = angular.module('swiftApp', ['anguFixedHeaderTable']);
app.controller('listCtrl', function($scope, $http) {
    var baseName = "config/";
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

    $scope.getQueryResults = function() {
        var queryJSON = {
            "query": $scope.form.query
        };
        console.log(JSON.stringify(queryJSON));

        $http.post(baseName + "executeQuery.php", queryJSON).success(function(data) {
            if (data.results.length !== 0) {
              $scope.successTextAlert = "Query executed successfully!";
              $scope.showSuccessAlert = true;
                $scope.rows = data.results;
                $scope.cols = Object.keys($scope.rows[0]);
            }
            else{
              $scope.failureTextAlert = "Query Failed!";
              $scope.showFailureAlert = true;
            }
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
            //console.log("Response:" + data.results);
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
        suiteRequest(data);

    };


    function suiteRequest(data) {

        $http.post(baseName + "getSuites.php", data).success(function(data) {
            //console.log("Response:" + JSON.stringify(data.results));
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
        console.log("table name: " + tableName);
        $http.post(baseName + "process.php", table).success(function(data) {
            console.log("Response:" + JSON.stringify(data.results));
            $scope[tableName] = data.results;
        }).error(function(data) {
            console.log("Error " + data);
        });

    };
});
