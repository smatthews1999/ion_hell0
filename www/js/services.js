// Generated by CoffeeScript 1.7.1

/*
A simple example service that returns some data.
 */

(function() {
  angular.module("starter.services", []).factory("Friends", function() {
    var friends;
    friends = [
      {
        id: 0,
        name: "Scruff McGruff"
      }, {
        id: 1,
        name: "G.I. Joe"
      }, {
        id: 2,
        name: "Miss Frizzle"
      }, {
        id: 3,
        name: "Ash Ketchum"
      }
    ];
    return {
      all: function() {
        return friends;
      },
      get: function(friendId) {
        return friends[friendId];
      }
    };
  }).factory("AuthSvc", function() {
    return {
      isAuth: function() {
        return false;
      }
    };
  });

}).call(this);

//# sourceMappingURL=services.map