main = ($scope, $http) ->
  $http.get \tables.json .success (data) ->
    console.log data
