require './constants'

class Menu

    def order_or_not()
      # NOW_WHAT constant holds the 'order or leave' array
      # assigning that constant to a variable
      serve_options = NOW_WHAT
      serve_options.each_with_index do |options, index|
        puts "#{index+1}. #{options}"
      end
    end

end

# get feedback from terminal to test
  # menu = Menu.new()
  # menu.order_or_not
