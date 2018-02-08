require_relative './ingredients'

# inherit from Ingredients class
class Condiments < Ingredients
  # gives ingredients' display_options
  # the condiments parameter
  def list_condiments
    puts INTRO_CONDIMENTS
    # assign array to a variable so ingredients method 'display_options'
    # can read the array properly
    show_condiments = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
    display_options(show_condiments)
  end

  def start
    @condiment_choice = list_condiments[ get_user_input ]
  end


end
