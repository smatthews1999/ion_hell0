angular.module('starter.controllers', [])

    .controller('HomeCtrl', function () {
        //$rootScope.authed = false;
    })

    .controller('LoginCtrl', function ($scope, $rootScope, $state) {

        $scope.authme = function(){
            $rootScope.authed = true;
            $state.transitionTo("tab.mileage");
        }
    })

    .controller('MileageCtrl', function ($scope) {
    })

    .controller('FriendsCtrl', function ($scope, Friends) {
        $scope.friends = Friends.all();
    })

    .controller('FriendDetailCtrl', function ($scope, $stateParams, Friends) {
        $scope.friend = Friends.get($stateParams.friendId);
    })

    .controller('AccountCtrl', function ($scope, $rootScope, $state) {
        $scope.outme = function(){
            $rootScope.authed = false;
            $state.transitionTo("tab.login");
        }
    });
