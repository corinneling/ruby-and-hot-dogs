require_relative './ingredients'

class Dog < Ingredients

  def initialize
   @ingredient = 'a dog'
   @show = ['Breakfast Sausage', 'Beef', 'Mystery Meat', 'Polish', 'Ice Cream', 'Sushi']
  end

 def list_dogs
   # prompts the user to choose a bun
   display_prompt
   # takes method from ingredients and passes in the array
   display_options
 end
  # lists array, gets user choice, and stores it in an instance var
  def start
     @dog_choice = list_dogs[ get_user_input ]
     puts "Good choice! You selected the delicious #{@dog_choice} hot dog.\n\n"
  end

  def choice
    @dog_choice
  end


end
