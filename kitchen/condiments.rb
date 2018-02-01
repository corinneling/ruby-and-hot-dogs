require './kitchen/ingredients'

# inherit from Ingredients class
class Condiments < Ingredients
  attr_accessor :condiments
  # create the hot dog items
  def intialize
    @condiments = [:nutella, :cheese, :fruit, :sprinkles, :onions, :ketchup, :chips, :mustard]
  end
  # method to use in cook
  # gives ingredients' display_options
  # the condiments parameter
  def show_condiments
    display_options(condiments)
  end
end
