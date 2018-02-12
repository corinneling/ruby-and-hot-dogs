require_relative './ingredient'

class Condiments < Ingredient

  def initialize
   @ingredient = 'some condiments'
   @show = ['Nutella', 'String Cheese', 'Fruit Loops', 'Sprinkles', 'Onions', 'Ketchup', 'Chips', 'Mustard']
  end

end
