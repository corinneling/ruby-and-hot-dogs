require './kitchen/ingredients'

# inherit from Ingredients class
class HotDog < Ingredients

  # create the hot dog items
  def intialize
  @ingredient = Ingredients.new()
  @dog = [
    Ingredients.new('Breakfast'),
    Ingredients.new('Beef'),
    Ingredients.new('Mystery'),
    Ingredients.new('Polish'),
    Ingredients.new('Ice Cream'),
    Ingredients.new('Sushi')
  ]
  end

  # create a method so the hot dog items can talk to the
  # rest of the program
  def dogs()
    @dog
  end

  # create method that calls method from Ingredients
  # to iterate through and display the different dogs
  def display_dogs()
    @ingredient.display_ingredient(dogs)
  end
end
