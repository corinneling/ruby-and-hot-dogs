require './customer-service/cook'
require './customer-service/menu'
require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Stand
  # creating new instances of
  # the following classes:
  dog = Dog.new()
  bun = Bun.new()
  condiments = Condiments.new()
  menu = Menu.new()
  # giving cook instances of the classes
  cook = Cook.new(menu, dog, bun, condiments)
  # tells cook to start doing stuff
  cook.serve
end
