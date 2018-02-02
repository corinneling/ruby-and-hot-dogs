require './customer-service/cook'
require './customer-service/order'
require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Stand
  # creating new instances of
  # the following classes:
  dog = Dog.new
  bun = Bun.new
  condiments = Condiments.new
  order = Order.new
  # giving cook instances of the classes
  cook = Cook.new dog, bun, condiments, order
  # tells cook to start doing stuff
  cook.start_order
end
