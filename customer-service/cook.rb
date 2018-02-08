require './constants'

class Cook
  attr_accessor :dog, :bun, :condiment, :order
  # create instances of the classes for the cook class
  def initialize dog, bun, condiment, order
    @dog = Dog.new
    @bun = Bun.new
    @condiment = Condiments.new
    @order = Order.new
  end

  # start interaction with customer
  def start_order
   # stores the methods below so they can be called in order
   # or their order can be manipulated later
    lets_order = [
      hello_customer,
      first_step,
      continue_bun,
      second_step,
      continue_condiment,
      third_step,
      print_order
    ]

    # iterates through each method
    lets_order.each do |i|
       i
    end
  end

  # methods for the lets_order array
  def hello_customer
    # WELCOME stored in constants.rb
    puts WELCOME
  end

  def first_step
    # lists the dogs and gets user input's choice
    dog.start
  end

  def continue_bun
    # does user want to order a bun or not?
    # if yes proceed to second_step
    # if no proceed to third_step
    bun.choose_yn "a bun", second_step, third_step
  end

  def second_step
    # same as for the dog class method, but with bun options
    bun.start
  end

  def continue_condiment
    # same as bun choose_yn, but with different steps to proceed to
    condiment.choose_yn "some toppings", third_step, print_order
  end

  def third_step
    # same as for the dog and bun class method, but with condiment options
    condiment.start
  end

  def print_order
    # should print the order in a nice, pretty string
    # current not set up correctly
    order.display_final
  end

end
