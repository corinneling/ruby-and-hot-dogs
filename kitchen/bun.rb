require_relative './ingredients'

class Bun < Ingredients

  def initialize
   @ingredient = 'a bun'
   @show = ['Classic', 'Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed']
  end

  def list_buns
    # prompts the user to choose a dog
    display_prompt
    # takes method from ingredients and passes in the array
    display_options
  end
  # lists array, gets user choice, and stores it in an instance var
  def start
    @bun_choice = list_buns[ get_user_input ]
    puts "You chose a #{@bun_choice} bun.\n\n"
  end
  # makes the selected option readable
  def choice
    @bun_choice
  end

end
