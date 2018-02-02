require './constants'
require_relative './manager'

class Cook < TheManager
  # makes vars available to get and set
  attr_accessor :dog, :bun, :condiments, :order
  # intiazlizes those vars
  def initialize dog, bun, condiments, order
    @dog = dog
    @bun = bun
    @condiments = condiments
    @order = order
  end
  # stops ruby and ask user for input
  def user_input
    # returns user input
    return gets.chomp.to_i
  end
  # called if user chose 1 earlier
  # shows all options and stores each selection
  def start_order
   # welcomes the user
     puts WELCOME
    # outputs options to the command line
    # then saves the user's choice in a var
    dog_choice = dog.list_dogs[ user_input ]
    bun_choice = bun.list_buns[ user_input ]
    condiments_choice = condiments.list_condiments[ user_input ]
    # this method from order takes the vars we just saved and outputs them
    order.display_final_masterpiece(dog_choice, bun_choice, condiments_choice)
  end
end
