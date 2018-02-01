require './constants'

class Cook
  attr_accessor :menu, :dog, :bun, :condiments

  def initialize(menu, dog, bun, condiments)
    @menu = menu
    @dog = dog
    @bun = bun
    @condiments = condiments
  end

  # welceomes & asks the user if they want to order or leave
  def serve
    puts WELCOME
    menu.order_or_not
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
      start_order
    elsif serve_number == 2
      puts BYE
    else
      puts ERROR
    end
  end

  # stops ruby and ask user for input
  def user_input()
    return gets.chomp.to_i
  end

  # called if user chose 1 earlier
  # shows all options and stores each selection
  def start_order()
    # calls method for printing array in hotdog.rb
    dog.list_dogs
    dog_choice = user_input

    # NOT WORKING for some reason ??
    # error: in `start_order': undefined method `show_buns'
    bun.show_buns
    bun_choice = user_input

    condiments.display_options(condiments)
    condiments_choice = user_input
    # prints order to the command line
    #  puts "you ordered #{dog_choice} with a #{bun_choice} and #{condiments_choice}"

  end

end
