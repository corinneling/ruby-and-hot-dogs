require './constants'

class Menu

    # method called in each serve_[item] that gives user a y/n choice
    def order_or_not()
      serve_options = NOW_WHAT
      serve_options.each_with_index do |options, index|
        puts "#{index+1}. #{options}"
      end
    end
    
end
