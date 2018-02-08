require_relative './ingredients'

# inherit from Ingredients class in ingredients.rb
class Bun < Ingredients

  # INTRO_BUNS found in constatnts.rb
  def list_buns
    puts INTRO_BUNS
    show_buns = ['Whole Wheat', 'Lettuce', 'Cheeto', 'Cotton Candy', 'Seaweed', 'Classic']
    # takes method from ingredients and passes in the array
    display_options show_buns
  end

  # lists array, gets user choice, and stores it in an instance var
  def start
    @bun_choice = list_buns[ get_user_input ]
    puts "You chose a #{@bun_choice} bun.\n\n"
  end

    # list << "Whole Wheat" << "Lettuce" << "Cheeto"

  # lets user choose if they want to continue to the next
  # step or not when an item is not required
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

end
