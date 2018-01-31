require './kitchen/ingredients'

# inherit from Ingredients class
class Condiments < Ingredients

  # create the hot dog items
  def intialize
  @ingredient = Ingredients.new()
  @condiments = [
    Ingredients.new('Nutella'),
    Ingredients.new('String Cheese'),
    Ingredients.new('Fruit Loops'),
    Ingredients.new('Sprinkles'),
    Ingredients.new('Onions'),
    Ingredients.new('Ketchup'),
    Ingredients.new('Unagi Sauce'),
    Ingredients.new('Hot Sauce')
  ]
  end

  # create a method so the condiments can talk to the
  # rest of the program
  def toppings()
    @condiments
  end

  # create method that calls method from Ingredients
  # to iterate through and display the different condiments
  def show_condiments()
    @ingredient.display_ingredient(toppings)
  end
end
