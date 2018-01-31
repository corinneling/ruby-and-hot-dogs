require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'
require './constants'

class Menu
  # Creates a new instance of HotDog, Bun, & Condiments classes
  def initialize
    @hot_dog = HotDog.new()
    @hot_dog_bun = Bun.new()
    @hot_dog_condiments = Condiments.new()
  end

    # method called in each serve_[item] that gives user a y/n choice
    def order_or_not()
      serve_options = NOW_WHAT
      serve_options.each_with_index do |options, index|
        puts "#{index+1}. #{options}"
      end
    end

    # runs display methods from the ingredients child classes
    def serve_dog()
      @hot_dog.display_dogs
    end

    def serve_bun()
      @hot_dog_bun.display_dogs
    end

    def serve_condiments()
      @hot_dog_condiments.display_dogs
    end

end
