require 'minitest/autorun'
require "minitest/pride"

require './customer-service/cook'

class TestCook < Minitest::Test

  def setup
    choice = 'hi'
    cook = Cook.new
  end

  def test_if_print_order_outputs_correct_info
    result = "This hi hot dog with a hi1 bun, and hi1 is beautiful. You should go into hot dog art."
    assert_equal result, cook.print_order
  end

end
