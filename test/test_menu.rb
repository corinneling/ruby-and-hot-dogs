require 'minitest/autorun'
require "minitest/pride"

require './kitchen/menu'

class TestMenu < Minitest::Test
  include Menu
  def setup
    @show = ['hi', 'ni hao', 'bonjour']
    @ingredient = 'test ingredient'
  end

  def test_the_menu
    assert_instance_of  Module, Menu
  end

  def test_display_prompt_outputs_correct_string
    $stdout = StringIO.new
    display_prompt
    assert_equal 'Please choose test ingredient', $stdout.string.chomp
  end

  def test_display_options_array_var_is_an_array
    assert_kind_of Array, @show
  end

end
