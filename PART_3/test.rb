require_relative 'station' # connect station.rb
require_relative 'route' # connect route.rb
require_relative 'train' # connect train.rb

# test initialize station
station_1 = Station.new("Chelyabinsk") # station №1
station_2 = Station.new("Novosibirsk") # station №2
station_3 = Station.new("Omsk") # station №3

# test initialize route
route_1 = Route.new(station_1, station_2) # route №1

# test add_station
route_1.add_station(station_3)
route_1.view_route # after using add_station
puts "\n"

# test delete_station
route_1.delete_station(station_1)
route_1.view_route # after using delete_station

# test initialize train
train_1 = Train.new("1", "passenger", 10) # train №1
train_1.set_route(route_1) # set route, route_1 is .Route object!

# test take_train
station_1.take_train(train_1) #take train, train_1 is .Train object!

#test train_by_type
puts "\nPassenger type: #{station_1.train_by_type("passenger")}"

puts train_1.next_station
train_1.move_forward
puts train_1.previous_station
