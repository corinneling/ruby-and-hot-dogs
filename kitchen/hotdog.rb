require_relative './ingredients'

class Dog < Ingredients

  def initialize
   @ingredient = 'a dog'
   @show = ['Breakfast Sausage', 'Beef', 'Mystery Meat', 'Polish', 'Ice Cream', 'Sushi']
  end

 def list
   # prompts the user to choose a bun
   display_prompt
   # takes method from ingredients and passes in the array
   display_options
 end
  # lists array, gets user choice, and stores it in an instance var
  def start
     @choice = list[ get_user_input ]
     puts "Good choice! You selected the delicious #{@choice} hot dog.\n\n"
  end

  # def choice
  #   @choice
  # end


end
