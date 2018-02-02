require './constants'
require_relative './health-inspector'

class Cook < HealthInspector
  # makes vars available to get and set
  attr_accessor :menu, :dog, :bun, :condiments, :order
  # intiazlizes those vars
  def initialize menu, dog, bun, condiments, order
    @menu = menu
    @dog = dog
    @bun = bun
    @condiments = condiments
    @order = order
  end
  # welceomes & asks the user if they want to order or leave
  def serve
    puts WELCOME
    menu.order_or_not
    # asks the user for input
    # sends that input to choose_to_order case method below
    choose_to_order(gets.chomp.to_i)
  end
  # if user chooses to order then tells user they will get the menu
  # and then shows the hot dog ingredients
  def choose_to_order serve_number
    case serve_number
    when 1
      puts GET_MENU
      # starts method below
      start_order
    when 2
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
    # outputs options to the command line
    # then saves the user's choice in a var
    dog_choice = dog.list_dogs[ user_input ]
    bun_choice = bun.list_buns[ user_input ]
    condiments_choice = condiments.list_condiments[ user_input ]
    # this method from order takes the vars we just saved and outputs them
    order.display_final_masterpiece(dog_choice, bun_choice, condiments_choice)
  end
end
