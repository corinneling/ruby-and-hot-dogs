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
      continue_condiment,
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
    y_or_n
    # bun.y_or_n var1, var12
  end

  def second_step
    # same as for the dog class method, but with bun options
    bun.start
  end

  def continue_condiment
    # same as bun choose_yn, but with different steps to proceed to
    y_or_n2
  end

  def third_step
    # same as for the dog and bun class method, but with condiment options
    condiment.start
  end

  def print_order
    puts "print order test"
    # puts "This #{@dog_choice} Dog with a #{@bun_choice} Bun and #{@condiments_choice} is beautiful.
    # Have a good meal, and hope to see you again soon!."
  end

  def y_or_n
    puts "Would you like to order a bun?\n1. Yes\n2. No"
    @input = gets.chomp.to_i
    case @input
    when 1 then second_step
    when 2 then third_step
    else
      puts NUM_ERROR
      while @input > 2
        y_or_n
      end
    end
  end

  def y_or_n2
    puts "Would you like to order some condiments?\n1. Yes\n2. No"
    @input = gets.chomp.to_i
    case @input
    when 1 then third_step
    when 2 then puts "Okay, let's see what you ordered."
    else
      puts NUM_ERROR
      while @input > 2
        y_or_n2
      end
    end
  end

end
