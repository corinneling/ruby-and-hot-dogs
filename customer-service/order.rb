require_relative './cook'

class Order
    def display_final_masterpiece(dog_choice, bun_choice, condiments_choice)
      # prints order to the command line
      puts "This #{dog_choice} Dog with a #{bun_choice} Bun and #{condiments_choice} is beautiful. You should go into hot dog art."
    end
end
