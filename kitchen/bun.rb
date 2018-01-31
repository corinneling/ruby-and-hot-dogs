require './kitchen/ingredients'

# inherit from Ingredients class
class Bun < Ingredients

  # create the bun items
  def intialize
  @bun = [
    Ingredients.new('Whole Wheat'),
    Ingredients.new('Lettuce'),
    Ingredients.new('Flaming Hot Cheeto'),
    Ingredients.new('Cotton Candy'),
    Ingredients.new('Seaweed'),
    Ingredients.new('Classic')
  ]
  end

  # create method that calls method from Ingredients
  # to iterate through and display the different buns
  def display_buns()
    display_ingredient(@bun)
  end
end
