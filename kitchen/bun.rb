require './kitchen/ingredients'

# inherit from Ingredients class
class Bun < Ingredients
  #   create the bun items
  #   this did not work though...the display_options method couldn't read
  #   the array properly
  #   @buns = [:wheat, :lettuce, :cheeto, :cotton_candy, :seaweed, :classic]

  def list_buns
    # assign array to a variable so ingredients method 'display_options'
    # can read the array properly
    show_buns = ['Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed', 'Classic']
    display_options(show_buns)
  end

end
