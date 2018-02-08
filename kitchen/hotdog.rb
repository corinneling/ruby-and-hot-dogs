require_relative './ingredients'

# inherit from Ingredients class in ingredients.rb
class Dog < Ingredients

 def list_dogs
   # INTRO_DOGS found in constatnts.rb
   puts INTRO_DOGS
   show_dogs = ['Breakfast', 'Beef', 'Mystery', 'Polish', 'Ice Cream', 'Sushi']
   # takes method from ingredients and passes in the array
   display_options(show_dogs)
 end

  # lists array, gets user choice, and stores it in an instance var
  def start
     @dog_choice = list_dogs[ get_user_input ]
     puts "Good choice! You selected the delicious #{@dog_choice} hot dog.\n\n"
  end

end
