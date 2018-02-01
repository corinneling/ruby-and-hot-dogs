require './constants'

class Cook
  # makes vars available to get and set
  attr_accessor :menu, :dog, :bun, :condiments

  # intiazlizes those vars
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
    # sends that input to choose_to_order case method below
    choose_to_order(gets.chomp.to_i)
  end

  # choose_to_order case method
  # if user chooses to order then tells user they will get the menu
  # and then shows the hot dog ingredients
  def choose_to_order(serve_number)
    if serve_number == 1
      puts GET_MENU
      # starts method below
      start_order
    elsif serve_number == 2
      # exits hot dog stand
      puts BYE
    else
      # outputs an error
      puts ERROR
    end
  end

  # stops ruby and ask user for input
  def user_input
    # returns user input
    return gets.chomp.to_i
  end

  # called if user chose 1 earlier
  # shows all options and stores each selection
  def start_order
    # this saves the # the user selects
    # want it to save the option in the array they selected, not its index
    dog_choice = dog.list_dogs[ user_input ]
    bun_choice = bun.list_buns[ user_input ]
    condiments_choice = condiments.list_condiments[ user_input ]
    print_order(dog_choice, bun_choice, condiments_choice)
  end

  def print_order(dog_choice, bun_choice, condiments_choice)
    # prints order to the command line
    puts "You ordered a #{dog_choice} Dog with a #{bun_choice} Bun and #{condiments_choice}"

  end
end
