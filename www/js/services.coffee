
###
A simple example service that returns some data.
###

# Might use a resource here that returns a JSON array

# Some fake testing data

# Simple index lookup
angular.module("starter.services", []).factory("Friends", ->
  friends = [
    {
      id: 0
      name: "Scruff McGruff"
    }
    {
      id: 1
      name: "G.I. Joe"
    }
    {
      id: 2
      name: "Miss Frizzle"
    }
    {
      id: 3
      name: "Ash Ketchum"
    }
  ]
  all: ->
    friends

  get: (friendId) ->
    friends[friendId]
).factory "AuthSvc", ->

  # you're never getting in...
  isAuth: ->
    false
