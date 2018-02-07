require './constants'

class Cook
  # makes vars available to get and set
  attr_accessor :dog, :bun, :condiments, :order
  # intiazlize those vars
  def initialize dog, bun, condiments, order
    @dog = dog
    @bun = bun
    @condiments = condiments
    @order = order
  end

  # call on methods to interact with customer
  def start_order
   # welcomes the user
    hello_customer
   # calls below methods
    first_step
  end

  # shows all options and stores each selection
  def first_step
    user_input_valid? @dog_choice = dog.list_dogs[ get_user_input ]
    choose_y_or_n "a bun"
  end


  def second_step
    user_input_valid? @bun_choice = bun.list_buns[ get_user_input ]
    choose_y_or_n "some condiments"
  end

  def third_step
    user_input_valid? @condiments_choice = condiments.list_condiments[ get_user_input ]
    print_order
  end

  def print_order
    order.display_final(@dog_choice, @bun_choice, @condiments_choice)
  end

 # cook's helper methods
  def hello_customer
    puts WELCOME
  end

  # asks user for input
  def get_user_input
      gets.chomp.to_i
  end

  # check if user input is valid == integer && != nil
  def user_input_valid? some_input
    if some_input nil
      puts "Please choose a number."
      some_input
    end
  end

  def choose_y_or_n which_item
    puts "would you like to order #{which_item}?\n 1. Yes\n 2. No"
    @this = get_user_input
    continue_or_not
  end

  def continue_or_not
    case @this
    when 1
      second_step
    when 2
      third_step
    else
      puts "I don't understand, choose 1 or 2."
      get_user_input
    end
  end

end
