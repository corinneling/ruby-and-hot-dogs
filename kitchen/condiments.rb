require_relative './ingredients'

# inherit from Ingredients class in ingredients.rb
class Condiments < Ingredients

  def list_condiments
    # INTRO_BUNS found in constatnts.rb
    puts INTRO_CONDIMENTS
    show_condiments = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
    # takes method from ingredients and passes in the array
    display_options(show_condiments)
  end

  # lists array, gets user choice, and stores it in an instance var
  def start
    @condiment_choice = list_condiments[ get_user_input ]
    puts "You chose #{@condiment_choice} as your condiment.\n\n"
  end


end
