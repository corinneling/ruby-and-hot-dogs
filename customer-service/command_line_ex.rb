require 'minitest/autorun'
require './command_line'

class TestCommandLine < Minitest::Test

  def test_print_stuff_requires_argument
    command_line = CommandLine.new
    assert_raises ArgumentError do
      command_line.print_stuff
    end
  end

  def test_print_stuff_echos_stuff
    $stdout = StringIO.new
    command_line = CommandLine.new
    
    command_line.print_stuff 'Hello World'

    assert_equal "Hello World", $stdout.string.chomp
  end

  def test_print_stuff_adds_a_new_line
    $stdout = StringIO.new
    command_line = CommandLine.new
    
    command_line.print_stuff 'Hello World'

    assert_equal "\n", $stdout.string.slice(-1)
  end
end
