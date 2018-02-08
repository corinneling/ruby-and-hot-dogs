require './customer-service/cook'
require './customer-service/order'
require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Stand
  # giving cook the classes as parameters
  cook = Cook.new Dog, Bun, Condiments, Order
  # tells cook to start the ordering process
  cook.start_order
end
