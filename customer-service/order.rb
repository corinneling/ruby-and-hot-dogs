require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Order

  def display dog_choice, bun_choice, condiments_choice
    puts "This #{@dog_choice} Dog with a #{@bun_choice} Bun and #{@condiments_choice} is beautiful.
    Have a good meal, and hope to see you again soon!."
  end

end
