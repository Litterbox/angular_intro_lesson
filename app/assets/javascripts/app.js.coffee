# Define App
TestApp = angular.module "TestApp", []

# Create our controller
TestApp.controller "IndexCtrl", [ '$scope', ($scope) ->
	$scope.title = "Let's learn angular and coffee!"
	$scope.value = 0

	# $scope.checked = true

	$scope.instructor =
		first: "Elie"
		last: "Schoppik"

	$scope.friends = [{
		name: "Bob",
		style: "red"
	},
	{
		name: "Joe",
		style: "green"
	},
	{
		name: "Tom",
		style: "blue"
	}]

	$scope.names = []

	$scope.addOne = ->
		$scope.value++
	$scope.subtractOne = ->
		$scope.value--

	$scope.books = [ {
		title: "Cat's Cradle",
		rating: 4,
		price: 45.99
	},
	{
		title: "ulysses",
		rating: 5,
		price: 39.99
	},
	{
		title: "The Firm",
		rating: 3,
		price: 19.99
	},
	{
		title: "Bringing Down the House",
		rating: 4,
		price: 39.99
	},
	{
		title: "Slaughterhouse Five",
		rating: 5,
		price: 39.99
	},
	{
		title: "Atlas Shrugged",
		rating: 5,
		price: 66.99
	}
	]

	$scope.boughtBook =(book) ->
		# console.log(book)
		# console.log($scope.books)
		# $scope.books.splice(book,1)
		# # need this refactor when the array gets out of order
		$scope.books.splice($scope.books.indexOf(book),1)

	$scope.$watch "typing", ->
		console.log $scope.typing
		if $scope.typing == "answer"
			# Better refactor!
			$scope.removed = true
			# ANYTIME YOU USE ANGULAR
			# $(".magic").hide()
			$scope.notice = "Well done!"

	$scope.add = ->

		$scope.books.push
			title: $scope.new_title,
			rating: $scope.new_rating,
			price: $scope.new_price

		$scope.new_title = ""
		$scope.new_rating = ""
		$scope.new_price = ""

	$scope.cancel = ->
			$scope.new_title = ""
			$scope.new_rating = 0
			$scope.new_price = ""
]

TestApp.filter 'makeUppercase', ->
  (item) ->
      item.toUpperCase()

TestApp.filter 'addTax', ->
  (item, rate) ->
      item * (1 + rate)


