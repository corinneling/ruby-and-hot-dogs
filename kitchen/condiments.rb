require_relative './ingredients'

# inherit from Ingredients class in ingredients.rb
class Condiments < Ingredients

  def initialize
   @ingredient = 'some condiments'
   @skip = 'Going plain jane, I see.'
   @show = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
  end

  def list_condiments
    # prompts the user to choose some condiments
    display_prompt

    # takes method from ingredients and passes in the array
    display_options
  end

  # lists array, gets user choice, and stores it in an instance var
  def start
    @condiment_choice = list_condiments[ get_user_input ]
    puts "You chose #{@condiment_choice} as your condiment.\n\n"
  end

end
