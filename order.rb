require './cook'

class Order
  def intialize
    @final_masterpiece = []
  end

  def display_final_masterpiece(dog_choice, bun_choice, condiments_choice)
    @final_masterpiece.each do |dog, bun, condiments|
      puts "This #{dog} dog with a #{bun} bun and #{condiments} is beauitful.
      \n You should go into hot dog art."

end
