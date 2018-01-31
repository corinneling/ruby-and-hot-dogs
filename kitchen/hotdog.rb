require './kitchen/ingredients'

# inherit from Ingredients class
class HotDog < Ingredients

  # create the hot dog items
  def intialize
  @dog = [
    Ingredients.new('Breakfast'),
    Ingredients.new('Beef'),
    Ingredients.new('Mystery'),
    Ingredients.new('Polish'),
    Ingredients.new('Ice Cream'),
    Ingredients.new('Sushi')
  ]
  end
  
  # create method that calls method from Ingredients
  # to iterate through and display the different dogs
  def display_dogs()
    display_ingredient(@dog)
  end
end
