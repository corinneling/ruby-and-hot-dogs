require_relative './ingredients'

class Condiments < Ingredients

  def initialize
   @ingredient = 'some condiments'
   @show = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
  end

  def list
    # prompts the user to choose some condiments
    display_prompt
    # takes method from ingredients and passes in the array
    display_options
  end
  # lists array, gets user choice, and stores it in an instance var
  def start
    @choice = list[ get_user_input ]
    puts "You chose #{@choice} as your condiment.\n\n"
  end
  # makes the selected option readable
  # def choice
  #   @choice
  # end

end
