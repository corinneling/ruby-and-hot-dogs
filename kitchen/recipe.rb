require_relative './menu'

# this module is for getting what option the user selected and storing each selection in a variable
module Recipe
  include Menu

  # stops ruby to get user input
  def get_user_input
     user_input_valid gets.chomp
  end

  # lists array, gets user choice, and stores it in an instance var
  def start
    @choice = list[ get_user_input ]
    puts "You chose #{@choice}.\n\n"
  end

  # makes the selected option readable
  def choice
    @choice
  end

end
