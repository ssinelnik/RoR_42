require_relative 'instance_counter'
require_relative 'validate'

class Route
  include InstanceCounter
  include Validate

  attr_reader :stations, :name

  def initialize(name, first_station, last_station)
    @name = name
    validate!
    @stations = [first_station, last_station]
    register_instance
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

  private

  attr_writer :stations

  def validate!
    raise "Number can't be nil" if name.nil?
  end
end