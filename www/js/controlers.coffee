
#$rootScope.authed = false;
angular.module("starter.controllers", []).controller("HomeCtrl", ->
).controller("LoginCtrl", ($scope, $rootScope, $state) ->
  $scope.authme = ->
    $rootScope.authed = true
    $state.transitionTo "tab.mileage"
    return

  return
).controller("MileageCtrl", ($scope) ->
).controller("FriendsCtrl", ($scope, Friends) ->
  $scope.friends = Friends.all()
  return
).controller("FriendDetailCtrl", ($scope, $stateParams, Friends) ->
  $scope.friend = Friends.get($stateParams.friendId)
  return
).controller "AccountCtrl", ($scope, $rootScope, $state) ->
  $scope.outme = ->
    $rootScope.authed = false
    $state.transitionTo "tab.login"
    return

  return
