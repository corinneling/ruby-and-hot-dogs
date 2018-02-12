require_relative './constants'

class Cook
  attr_accessor :dog, :bun, :condiment
  # create instances of the classes for the cook class
  def initialize ingredient
    @dog = Ingredient.new 'a dog', ['Invisible Dog', 'Breakfast Sausage', 'Beef', 'Mystery Meat', 'Polish', 'Ice Cream', 'Sushi']
    @bun = Ingredient.new 'a bun', ['Classic', 'Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed']
    @condiment = Ingredient.new 'some condiments', ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
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
    puts "This #{@dog.choice} hot dog with a #{@bun.choice} bun, and #{@condiment.choice} is beautiful. You should go into hot dog art."
  end

end
