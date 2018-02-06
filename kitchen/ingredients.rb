class Ingredients

  # iterate through ingredient items
  def display_options item
    # display item in terminal to test
      # p item
    item.each_with_index do |option, index|
      puts "#{index+1}. #{option}"
    end
  end

  # one method requiring at least on item be accepted: dog class will use
  def user_input_empty? some_input
    raise 'You need to order at least one.' unless some_input
  end

  # checks to see if the user input is a string
  def user_input_valid? some_input
    some_input.is_a? Integer
  end
  # raises an error if user inputed a string and not an integer
  def number_needed some_input
    raise RuntimeError, "Strings don\'t work here. Please choose a number.", unless some_input.is_a? Integer
  end

  # allows the ingredients to be optional
  def order_item_or_skip
    puts 'would you like to continue? y/n'
  end

end
end 
