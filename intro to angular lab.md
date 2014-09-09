# Intro to Angular Lab

For tonight's lab we'd like you to apply some of the new Angular directives learned and in a Rails app, play around with these directives.

To review, we learned about

```
ng-app
ng-model
ng-show
ng-hide
ng-style
ng-class
ng-list
ng-pluralize
ng-repeat
ng-show
ng-hide
filters (orderBy, limitTo)
custom filters
```

### Objectives

1. Create a new rails app and include [angular](https://angularjs.org/) in your application

1. Create your app and controller in an app.js or app.js.coffee file

3. Create an array of objects called `favoriteMovies` and use the `ng-repeat` directive to iterate over the array of `favoriteMovies`.

5. Add a form outside the `ng-repeat` in step `3` that allows you to change the background color of the application. This will require you to look at the documentation for [ng-style](https://docs.angularjs.org/api/ng/directive/ngStyle) or review the notes.

7. Filter your `ng-repeat` of movies and order them by name and limit the number displayed to 3

6. Create a custom filter to reverse the letters of the title of your favorite movies

7. Write a function called removeFavorite that removes a favorite movie from your array.

7. Include the text "I have `{{favoriteMovies.length}}` favorite(s)" and use ng-pluralize so that the text displays favorite when there is 1 movie and favorites in all other cases

8. Add a checkbox that allows the user to see the list of favorite movies when checked and hides the list of movies when unchecked.

9. Check out [ng-keypress](https://docs.angularjs.org/api/ng/directive/ngKeypress) and create an input field and a counter that increments every time the user types a letter.

11. Create a form that takes in a word and then hides it when the form is submitted.

Bonus:

1. Write this all in CoffeeScript!
3. Go to Google fonts and pick out three favorite fonts and drop them into your `head`, then use the `ng-style` and `ng-model` directives to change the text color and font.
4. Use $watch to listen to when the secret word is typed and using your counter from exercise `10` show the secret word if the user has typed more than 20 characters




