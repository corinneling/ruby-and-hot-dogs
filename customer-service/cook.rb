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
    first_step_to_order
    second_step_to_order
    third_step_to_order
    print_order
  end

  def hello_customer
    puts WELCOME
  end

  # asks user for input
  def get_user_input
    gets.chomp.to_i
  end

  # check if user input is an integer
  def user_input_valid? some_input
    some_input.is_a? Integer
  end

  # shows all options and stores each selection

  def first_step_to_order
    @dog_choice = dog.list_dogs[ get_user_input ]
    user_input_valid? @dog_choice
  end

  def second_step_to_order
    @bun_choice = bun.list_buns[ get_user_input ]

  end

  def third_step_to_order
    @condiments_choice = condiments.list_condiments[ get_user_input ]

  end

  def print_order
    order.display_final(@dog_choice, @bun_choice, @condiments_choice)
  end


end
