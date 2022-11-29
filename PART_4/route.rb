=begin
Класс Route (Маршрут):
- Имеет начальную и конечную станцию, а также список промежуточных станций.
  Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними;
- Может добавлять промежуточную станцию в список;
- Может удалять промежуточную станцию из списка;
- Может выводить список всех станций по-порядку от начальной до конечной.
=end
# -----------------------------------------------------------------------------------------------------------------

class Route

  # accessor
  attr_accessor :stations

  # initialize
  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  # add station to route
  def add_station(station)
    @stations.insert(-2, station) # use -2 to add station between first and last
  end

  # delete station from route
  def delete_station(station)
      @stations.delete(station)
  end

  # view route
  def view_route
    @stations.each.with_index(1) { |station, index| puts "#{index}. #{station.name}" }
  end
end