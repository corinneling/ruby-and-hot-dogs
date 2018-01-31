require './cook'
require './order'

class Stand

  # creates instance of the cook
  cook = Cook.new()
  # welcomes guest
  cook.welcome
  # option to serve or leave
  cook.serve

  order = Order.new()

  order.display_final_masterpiece
end
