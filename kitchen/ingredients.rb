class Ingredients

# intialize name for prettier output of ingredients
  # def intialize(name)
  #  @name = name
  # end

  # iterate through ingredient items
  def show_options(items)
    items.each_with_index do |option, index|
      puts "#{index+1}. #{option}"
    end
  end


end
