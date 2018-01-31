require './order'
require './constants'

class Cook
  def initialize(menu)
    @menu = menu
  end

  # welceomes & asks the user if they want to order or leave
  def serve
    puts WELCOME
    #calls method that asks user to order or leave
    @menu.order_or_not
    # asks the user for input
    # sends that input to choose_to_order case method
    choose_to_order(gets.chomp.to_i)
  end

  # case method
  # if user chooses to order then tells user they will get the menu
  # and then shows the hot dog ingredients
  def choose_to_order(serve_number)
    if serve_number == 1
      puts GET_MENU
      @menu.serve_dog
    elsif serve_number == 2
      puts BYE
    else
      puts ERROR
    end
  end

end
