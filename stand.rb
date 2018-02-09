require './customer-service/cook'
require './kitchen/hotdog'
require './kitchen/bun'
require './kitchen/condiments'

class Stand
  # giving cook the classes as parameters
  cook = Cook.new Dog, Bun, Condiments
  # tells cook to start the ordering process
  cook.start_order
end
