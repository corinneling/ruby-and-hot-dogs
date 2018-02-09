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
   # stores the methods below so they can be called in order
   # or their order can be manipulated later
      puts WELCOME
      # lists the dogs and gets user input's choice
      dog.start
      bun.y_or_n
      condiment.y_or_n
      print_order
  end

  def print_order
    # not working, i know it's in the wrong place, but where is the right place?
    puts "This #{@dog.choice} hot dog with a #{@bun.choice} bun, and #{@condiment.choice} is beautiful.
Have a good meal, and hope to see you again soon!"
  end

end
