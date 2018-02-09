require_relative './ingredients'

class Bun < Ingredients

  def initialize
   @ingredient = 'a bun'
   @show = ['Classic', 'Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed']
  end

  def list
    # prompts the user to choose a dog
    display_prompt
    # takes method from ingredients and passes in the array
    display_options
  end
  # lists array, gets user choice, and stores it in an instance var
  def start
    @choice = list[ get_user_input ]
    puts "You chose a #{@choice} bun.\n\n"
  end

end
