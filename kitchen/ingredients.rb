class Ingredients

  # tells the user what ingredient they are selecting
  def display_prompt
    puts "Please choose #{@ingredient}"
  end

  # iterates through whatever parameter it is given
  def display_options
    @show.each_with_index do |option, index|
      puts "#{index}. #{option}"
    end
  end

  # stops ruby to get user input
  def get_user_input
     gets.chomp.to_i
  end

  # going to check if user input is valid or not by checking if the
  # parameter it is given is an integer and != nil
  def user_input_valid? item
    if (item) > @num
      puts "We don't offer that here. Please choose a valid number."
      start
    elsif item.between?(1,@num)
      puts 'good'
    else
      'please choose a number'
    end
  end

  # lets the user choose if they want to continue onto the next step or not
  def y_or_n
    puts "Would you like to order #{@ingredient}?\n1. Yes\n2. No"
    @input = gets.chomp.to_i
    case @input
    when 1 then start
    when 2 then puts "#{@skip}\n\n"
    else
      puts NUM_ERROR
      while @input > 2
        y_or_n
      end
    end
  end

end
