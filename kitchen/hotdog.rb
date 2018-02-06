require_relative './ingredients'

# inherit from Ingredients class
class Dog < Ingredients
 def list_dogs
   puts INTRO_DOGS
   # assign array to a variable so ingredients method 'display_options'
   # can read the array properly
   show_dogs = ['Breakfast', 'Beef', 'Mystery', 'Polish', 'Ice Cream', 'Sushi']
   display_options(show_dogs)
 end

end
