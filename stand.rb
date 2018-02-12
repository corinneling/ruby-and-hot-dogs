require './customer-service/cook'
require './kitchen/ingredient'

class Stand
  # giving cook the classes as parameters
  cook = Cook.new Ingredient
  # tells cook to start the ordering process
  cook.start_order
end
