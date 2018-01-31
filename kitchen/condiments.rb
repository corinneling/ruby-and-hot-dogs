require './kitchen/ingredients'

# inherit from Ingredients class
class Condiments < Ingredients

  # create the hot dog items
  def intialize
  @condiments = [
    Ingredients.new('Nutella'),
    Ingredients.new('String Cheese'),
    Ingredients.new('Fruit Loops'),
    Ingredients.new('Sprinkles'),
    Ingredients.new('Onions'),
    Ingredients.new('Ketchup'),
    Ingredients.new('Ghost Pepper Sauce'),
    Ingredients.new('Mustard')
  ]
  end

  # create method that calls method from Ingredients
  # to iterate through and display the different condiments
  def show_condiments()
    display_ingredient(@condiments)
  end
end
