require './constants'

class Cook
  # makes vars available to get and set
  attr_accessor :dog, :bun, :condiment, :order
  # intiazlize those vars
  def initialize dog, bun, condiment, order
    @dog = Dog.new
    @bun = Bun.new
    @condiment = Condiments.new
    @order = Order.new
  end

  # start interaction with customer
  def start_order
   # welcomes the user
    lets_order = [
      hello_customer,
      first_step,
      continue_bun,
      second_step,
      continue_condiment,
      third_step,
      print_order
    ]

    lets_order.each do |i|
       i
    end
  end

  def get_user_input
     gets.chomp.to_i
  end

  def hello_customer
    puts WELCOME
  end

  def first_step
    dog.start
  end

  def continue_bun
    bun.choose_yn "a bun", second_step, third_step
  end

  def second_step
    bun.start
  end

  def continue_condiment
    condiment.choose_yn "some toppings", third_step, print_order
  end

  def third_step
    condiment.start
  end

  def print_order
    order.display_final
  end

end
