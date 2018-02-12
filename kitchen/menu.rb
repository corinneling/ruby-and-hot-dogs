# this module is for displaying the prompt and the options to choose from
module Menu

  # tells the user what ingredient they are selecting
  def display_prompt
    puts "Please choose #{@ingredient}"
  end

  # iterates through whatever parameter it is given
  def display_options
    @show.each_with_index do |option, index|
      puts "#{index}. #{option}"
    end
  end

  def list
    # prompts the user to choose a bun
    display_prompt
    # takes method from ingredients and passes in the array
    display_options
  end

end
