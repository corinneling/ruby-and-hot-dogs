require_relative './ingredients'

# inherit from Ingredients class
class Bun < Ingredients

  attr_accessor :bun_choice

  def initialize
    @bun_choice = bun_choice
  end
  #   create the bun items
  def list_buns
    puts INTRO_BUNS
    # assign array to a variable so ingredients method 'display_options'
    # can read the array properly
    show_buns = ['Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed', 'Classic']
    display_options show_buns
  end


end
