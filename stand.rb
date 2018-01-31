require './cook'
require './menu'

class Stand
  # creates instance of the menu
  menu = Menu.new()
  # creates instance of the cook
  cook = Cook.new(menu)
  # starts prompting the user for action
  cook.serve

end
