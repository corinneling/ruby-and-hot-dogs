require './kitchen/ingredients'

# inherit from Ingredients class
class HotDog < Ingredients
  # create the hot dog items
  def intialize
    @dog = ['Breakfast', 'Beef', 'Mystery', 'Polish', 'Ice Cream','Sushi']
  end
end
