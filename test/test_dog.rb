require 'minitest/autorun'
require './kitchen/hotdog'

class TestDog < Minitest::Test
  def test_canary
    assert true
  end

  def test_dog_can_be_created
    Dog.new
  end

  def test_dog_array_can_be_iterated_through
    # Arrange
    
    # Act

    # Assert
  end

end
