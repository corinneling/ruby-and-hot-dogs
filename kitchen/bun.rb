require_relative './ingredients'

# inherit from Ingredients class
class Bun < Ingredients
  #   create the bun items
  def list_buns
    puts INTRO_BUNS
    # assign array to a variable so ingredients method 'display_options'
    # can read the array properly
    show_buns = ['Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed', 'Classic']
    display_options show_buns
  end

end
