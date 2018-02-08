class Ingredients

  # iterates through whatever parameter it is given
  def display_options item
    item.each_with_index do |option, index|
      puts "#{index+1}. #{option}"
    end
  end

  # NEED TO FIGURE OUT
  # array that the children of ingredients can store their items in
  def list *args
    options_list = Array.new
  end

  # stops ruby to get user input
  def get_user_input
     gets.chomp.to_i
  end

  # lets user choose if they want to continue to the next
  # step or not when an item is not required
  def y_or_n step1, step2
    puts "would you like to order a bun?\n1. Yes\n2. No"
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

  # going to check if user input is valid or not by checking if the
  # parameter it is given is an integer and != nil

    # def check_input item, num
    #   while item.to_i !== (1..num) || item
    #     puts "We don't offer that here. Please choose a valid number."
    #     get_user_input
    #   end
    # end


  #
  # def user_input_valid? some_input
  #   if some_input.is_a? Integer || some_input
  #     puts "thank you, let's continue"
  #     some_input
  #   else
  #     puts "Does not compute. Try again."
  #     some_input
  #   end
  # end

end
