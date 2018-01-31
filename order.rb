require './cook'

class Order
  
  def intialize
    @final_masterpiece = []
  end

  def display_final_masterpiece()
    final_masterpiece.each do |items|
      puts "This #{dog} dog with a #{bun} bun and #{condiments} is beauitful.
      \n You should go into hot dog art."
    end
  end

end
