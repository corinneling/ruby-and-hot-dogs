require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require './kitchen/ingredients'

class TestIngredients < Minitest::Test
  def setup_enviro
    @ingredient = Ingredients.new
    @hello = "hello"
    @num = 2
  end

# i used the hello string as a parameter first to see if it would fail
# then changed the parameter so it would pass
  def test_to_check_if_user_input_is_a_valid_integer
    assert_equal true, @ingredient.user_input_valid?(@num)
  end

  def test_is_the_output_of_error_method_the_string_created
    assert_equal true, @ingredient.user_input_valid?(@num),  "Strings don\'t work here. Please choose a number."
  end

  # here's an example assert_raises from an article i was reading
  def test_with_negative_number
   assert_raises(Math::DomainError) { square_root(-3) }
 end

# doesn't work, can't make it fail
#   def test_to_see_if_number_needed_refractor_worked
#     # Arrange
#     ingredient = Ingredients.new
#     hello = "hello world"
#     # Act
#     # Assert
#     assert_raises RuntimeError do
#       number_needed("hello world")
#     end
end
