require 'minitest/autorun'
require "minitest/pride"

require './kitchen/ingredient'

class TestIngredient < Minitest::Test
  def setup
    @ingredient = Ingredient.new
    @hello = "hello"
    @num = 2
  end

end
