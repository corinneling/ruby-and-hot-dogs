require_relative './ingredients'

# inherit from Ingredients class
class Condiments < Ingredients
  attr_accessor :condiment_choice

  def initialize
    @bun_choice = condiment_choice
  end
  # gives ingredients' display_options
  # the condiments parameter
  def list_condiments
    puts INTRO_CONDIMENTS
    # assign array to a variable so ingredients method 'display_options'
    # can read the array properly
    show_condiments = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
    display_options(show_condiments)
  end


end
