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

  # start interaction with customer
  def start_order
   # welcomes the user
    hello_customer
   # shows all options and stores each selection
    @dog_choice = dog.list_dogs[ get_user_input ]
      continue_buns
    @bun_choice = bun.list_buns[ get_user_input ]
      continue_condiments
    @condiments_choice = condiments.list_condiments[ get_user_input ]
    @show_order = order.display_final(@dog_choice, @bun_choice, @condiments_choice)
  end

  # cook's helper methods
   def hello_customer
     puts WELCOME
   end

   def get_user_input
      gets.chomp.to_i
   end

   def user_input_valid? some_input
     if some_input.is_a? Integer
       puts "thank you, let's continue"
       some_input
     else
       puts "Please choose a number."
       some_input
     end
   end

   def continue_buns
     choose_yn "a bun", @bun_choice, @condiments_choice
   end

   def continue_condiments
     choose_yn "some condiments", @condiments_choice, @show_order
   end

   def choose_yn item, step1, step2
     puts "would you like to order #{item}?\n1. Yes\n2. No"
     @input = get_user_input
     if @input == 1
       step1
     elsif @input == 2
       step2
     else
       puts "I don't understand, choose 1 or 2."
       get_user_input
     end
    end

end
