require './kitchen/ingredients'

# inherit from Ingredients class
class Condiments < Ingredients
  # create the hot dog items
  def intialize
  @condiments = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Ghost Pepper Sauce', 'Mustard']
  end
end
