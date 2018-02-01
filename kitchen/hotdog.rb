require './kitchen/ingredients'

# inherit from Ingredients class
class Dog < Ingredients
  # create the hot dog items
  # @dog = [:breakfast, :beef, :mystery, :polish, :ice_cream, :sushi]

 def list_dogs
   # assign array to a variable so ingredients method 'display_options'
   # can read the array properly
   show_dogs = ['Breakfast', 'Beef', 'Mystery', 'Polish', 'Ice Cream', 'Sushi']
   display_options(show_dogs)
 end

end

# get feedback from terminal to test
  # dog = Dog.new()
  # dog.list_dogs
