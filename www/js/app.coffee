# Ionic Starter App

# angular.module is a global place for creating, registering and retrieving Angular modules
# 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
# the 2nd parameter is an array of 'requires'
# 'starter.services' is found in services.js
# 'starter.controllers' is found in controllers.js

# org.apache.cordova.statusbar required

# User isn’t authenticated
angular.module("starter", [
  "ionic"
  "starter.controllers"
  "starter.services"
]).run(($ionicPlatform, $state, $rootScope) ->
  $rootScope.authed = false
  $ionicPlatform.ready ->
    StatusBar.styleDefault()  if window.StatusBar
    if $rootScope.authed
      $state.transitionTo "tab.mileage"
    else
      $state.transitionTo "tab.login"
    $rootScope.$on "$stateChangeStart", (event, toState) ->
      console.log toState.name
      if toState.auth and (not $rootScope.authed)
        $state.transitionTo "tab.login"
        event.preventDefault()
      return

    return

  return
).config ($stateProvider, $urlRouterProvider) ->

  # Ionic uses AngularUI Router which uses the concept of states
  # Learn more here: https://github.com/angular-ui/ui-router
  # Set up the various states which the app can be in.
  # Each state's controller can be found in controllers.js

  # setup an abstract state for the tabs directive

  # Each tab has its own nav history stack:
  $stateProvider.state("tab",
    url: "/tab"
    abstract: true
    templateUrl: "templates/tabs.html"
  ).state("tab.login",
    url: "/login"
    views:
      "tab-login":
        templateUrl: "templates/tab-login.html"
        controller: "LoginCtrl"
  ).state("tab.mileage",
    url: "/mileage"
    auth: true
    views:
      "tab-mileage":
        templateUrl: "templates/tab-mileage.html"
        controller: "MileageCtrl"
  ).state("tab.friends",
    url: "/friends"
    auth: true
    views:
      "tab-friends":
        templateUrl: "templates/tab-friends.html"
        controller: "FriendsCtrl"
  ).state("tab.friend-detail",
    url: "/friend/:friendId"
    auth: true
    views:
      "tab-friends":
        templateUrl: "templates/friend-detail.html"
        controller: "FriendDetailCtrl"
  ).state "tab.account",
    url: "/account"
    auth: true
    views:
      "tab-account":
        templateUrl: "templates/tab-account.html"
        controller: "AccountCtrl"

  return


# if none of the above states are matched, use this as the fallback
#$urlRouterProvider.otherwise('/tab/mileage');