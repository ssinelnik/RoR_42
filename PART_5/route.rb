class Route
  attr_reader :stations, :name

  def initialize(name, first_station, last_station)
    @name = name
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end

  def view_route
    @stations.each.with_index(1) { |station, index| puts "#{index}. #{station.name}" }
  end
end
