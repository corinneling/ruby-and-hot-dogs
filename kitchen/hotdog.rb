require_relative './ingredient'

class Dog < Ingredient

  def initialize
   @ingredient = 'a dog'
   @show = ['Invisible Dog', 'Breakfast Sausage', 'Beef', 'Mystery Meat', 'Polish', 'Ice Cream', 'Sushi']

  end

  # i feel like i need to put all of the ingredients in the ingredients class
  # then create a new class that i put all of the functionality in
  # maybe even divide it up into two classes??
  # idk

  # i could even have one array that has all of the items
  # and then i only display a range of that array depending on what section i am at


 # # makes the selected option readable
 # def choice
 #   @choice
 # end
 #
 # def list
 #   # prompts the user to choose a bun
 #   display_prompt
 #   # takes method from ingredients and passes in the array
 #   display_options
 # end
 #
 # # lists array, gets user choice, and stores it in an instance var
 # def start
 #   @choice = list[ get_user_input ]
 #   puts "You chose #{@choice} as your condiment.\n\n"
 # end

end
