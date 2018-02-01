require './kitchen/ingredients'

# inherit from Ingredients class
class Condiments < Ingredients
  # create the condiments items
  # see buns.rb for reason for commenting out
  #  @condiments = [:nutella, :cheese, :fruit, :sprinkles, :onions, :ketchup, :chips, :mustard]
  # method to use in cook
  # gives ingredients' display_options
  # the condiments parameter
  def list_condiments
    show_condiments = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
    display_options(show_condiments)
  end
end
