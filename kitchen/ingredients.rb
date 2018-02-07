class Ingredients

  # iterate through ingredient items
  def display_options item
    # display item in terminal to test
      # p item
    item.each_with_index do |option, index|
      puts "#{index+1}. #{option}"
    end
  end


end
