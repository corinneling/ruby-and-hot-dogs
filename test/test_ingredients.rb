require 'minitest/autorun'
require './kitchen/ingredients'

class TestIngredients < Minitest::Test

# i set hello as a string first to see if it would fail
# it did so I changed it to an integer
# messing around with the red, green, refractor mindset
  def test_to_check_if_user_input_is_a_valid_integer
    # Arrange
    ingredient = Ingredients.new
    hello = 2
    # Act: move into assert section
    # ingredient.user_input_valid?(hello)
    # Assert
    assert_equal true, ingredient.user_input_valid?(hello)
  end

# i did not have my number_needed method set up correctly
# now that I figured out how to make an error message work
# and pass a test, I can refractor/fix my code
  def test_what_kind_of_error_number_needed_is
    # Arrange
    # Act
    result = nil
    begin
      fail "Strings don\'t work here. Please choose a number."
    rescue RuntimeError => number_needed
      result = :exception_handled
    end
    # Assert
    assert_equal true, number_needed.is_a?(RuntimeError),  "Strings don\'t work here. Please choose a number."
  end

# not working...i don't think i know how to write the proper error
  def test_to_see_if_number_needed_refractor_worked
    # Arrange
    ingredient = Ingredients.new
    hello = 2
    ingredient.number_needed(hello)
    # Act
    # Assert
    assert_raise RuntimeError do
      ingredient.number_needed(hello)
    end
  end
end
