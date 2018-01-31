require './kitchen/ingredients'

# inherit from Ingredients class
class Bun < Ingredients
  # create the bun items
  def intialize
  @bun = ['Whole Wheat', 'Lettuce', 'Flaming Hot Cheeto', 'Cotton Candy', 'Seaweed', 'Classic']
  end
end
