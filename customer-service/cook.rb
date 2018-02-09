require_relative './constants'

class Cook
  attr_accessor :dog, :bun, :condiment
  # create instances of the classes for the cook class
  def initialize dog, bun, condiment
    @dog = Dog.new
    @bun = Bun.new
    @condiment = Condiments.new
  end
  # start interaction with customer
  def start_order
      # prints a string to welcome the user
      puts WELCOME
      # lists the dogs and gets user input's choice
      dog.start
      # gives user the option to order a bun or not
      bun.y_or_n
      # gives user the option to order condiments or not
      condiment.y_or_n
      print_order
  end
  # prints out the order, takes the new instance of each object and displays the selected options
  def print_order
    puts "This #{@dog.choice} hot dog with a #{@bun.choice} bun, and #{@condiment.choice} is beautiful. Have a good meal, and hope to see you again soon!"
  end

end
