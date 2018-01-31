class Ingredients

# intialize name for prettier output of ingredients
  def intialize(name)
    @name = name
  end

  def name
    @name
  end

  # iterate through ingredient items
  def display_ingredient(items)
    items.each_with_index do |option, index|
      puts "#{option.name}"
    end
  end

  # ask user to choose an ingredient item
    def order_ingredient(order, item, choice)
      order = item[ choice ]
    end


end
