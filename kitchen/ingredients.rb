class Ingredients

# intialize name for prettier output of ingredients
  # def intialize(name)
  #  @name = name
  # end

  # iterate through ingredient items
  def display_options(item)
    item.each_with_index do |option, index|
      puts "#{index+1}. #{option}"
    end
  end

end
