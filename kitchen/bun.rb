require './kitchen/ingredients'

# inherit from Ingredients class
class Bun < Ingredients
  attr_accessor :buns
  # create the bun items
  def intialize
    @buns = [:wheat, :lettuce, :cheeto, :cotton_candy, :seaweed, :classic]
  end

end
