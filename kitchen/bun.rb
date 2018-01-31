require './kitchen/ingredients'

# inherit from Ingredients class
class Bun < Ingredients

  # create the bun items
  def intialize
  @ingredient = Ingredients.new()
  @bun = [
    Ingredients.new('Wheat'),
    Ingredients.new('Lettuce'),
    Ingredients.new('Flaming Hot Cheeto'),
    Ingredients.new('Cotton Candy'),
    Ingredients.new('Seaweed')
  ]
  end

  # create a method so the bun items can talk to the
  # rest of the program
  def da_buns()
    @bun
  end

  # create method that calls method from Ingredients
  # to iterate through and display the different buns
  def display_buns()
    @ingredient.display_ingredient(da_buns)
  end
end
