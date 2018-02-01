require './customer-service/cook'
require './customer-service/menu'
require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Stand
  dog = Dog.new()
  bun = Bun.new()
  condiments = Condiments.new()
  menu = Menu.new()
  cook = Cook.new(menu, dog, bun, condiments)
  cook.serve
end
