class Ingredients

  # iterate through ingredient items
  def display_options item
    # display item in terminal to test
      # p item
    item.each_with_index do |option, index|
      puts "#{index+1}. #{option}"
    end
  end

  # going to be the parent list that the child ingredients
  # call on to display stuff
  def list *args
    options_list = Array.new
  end

  def get_user_input
     gets.chomp.to_i
  end
  
  # lets user choose if they want to continue to the next
  # step or not when an item is not required
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

   # going to check if user input is valid or not
    def user_input_valid? some_input
      if some_input.is_a? Integer
        puts "thank you, let's continue"
        some_input
      else
        puts "Please choose a number."
        some_input
      end
    end


end
