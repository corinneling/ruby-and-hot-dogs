require_relative './ingredient'

class Bun < Ingredient

  def initialize
   @ingredient = 'a bun'
   @show = ['Classic', 'Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed']
  end

end
