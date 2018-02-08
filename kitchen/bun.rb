require_relative './ingredients'

# inherit from Ingredients class in ingredients.rb
class Bun < Ingredients

  # INTRO_BUNS found in constatnts.rb
  def list_buns
    puts INTRO_BUNS
    show_buns = ['Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed', 'Classic']
    # takes method from ingredients and passes in the array
    display_options show_buns
  end

  # lists array, gets user choice, and stores it in an instance var
  def start
    @bun_choice = list_buns[ get_user_input ]
  end

    # list << "Whole Wheat" << "Lettuce" << "Cheeto"


end
