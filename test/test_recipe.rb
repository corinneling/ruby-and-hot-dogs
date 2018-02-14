require 'minitest/autorun'
require "minitest/pride"

require './kitchen/recipe'

class TestRecipe < Minitest::Test
  include Recipe

  def setup
    @show = ['hi', 'ni hao', 'bonjour']
  end

  def test_menu_module_is_included
    menu = Menu
    assert_instance_of Module, menu
  end

  def test_recipe_is_a_module
    recipe = Recipe
    assert_instance_of Module, recipe
  end

end
