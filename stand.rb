require './cook'
require './menu'
require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Stand
  dog = HotDog.new()
  bun = Bun.new()
  condiments = Condiments.new()
  menu = Menu.new()
  # creates instance of the cook
  cook = Cook.new(menu, dog, bun, condiments)
  # starts prompting the user for action
  cook.serve

end
