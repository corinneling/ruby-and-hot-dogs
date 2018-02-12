require_relative './recipe'

# this class regulates the different ingredients
class Ingredient
 include Recipe
 # gives ingredients ingredient and show parameters that can be set when
 # a new instance is created
 attr_accessor :ingredient, :show, :num

 def initialize ingredient, show, num
   @ingredient = ingredient
   @show = show
   @num = num
 end

 # checks if the user input is an integer and between two numbers
 def user_input_valid input
   if integer?(input) && input.to_i.between?(0, @num)
     return input.to_i - 1
   else
     puts 'Sorry, we don\'t carry that here. Please choose something else.'
     get_user_input
   end
 end

 def integer? input
   input.to_i.to_s == input
 end

  # lets the user choose if they want to continue onto the next step or not
  def y_or_n
    # ingredient can be found in each child class
    puts "Would you like to order #{@ingredient}?\n1. Yes\n2. No"
    @input = gets.chomp.to_i
    case @input
    # start can be found in each child class
    when 1 then start
    when 2 then puts "Going plain jane, I see.\n\n"
    else
      puts NUM_ERROR
      while @input > 2
        y_or_n
      end
    end
  end

end
