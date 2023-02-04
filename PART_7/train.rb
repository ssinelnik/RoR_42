require_relative 'russian_railways'
require_relative 'instance_counter'
require_relative 'validate'

class Train
  include RussianRailways
  include InstanceCounter
  include Validate

  attr_reader :number, :wagons
  attr_accessor :speed

  NUMBER_FORMAT = /^[a-zа-я\d]{3}-*[a-zа-я\d]{2}$/ # g7777

  @@trains = []

  def self.find(number)
    @@trains.find { |train| train.number == number }
  end

  def initialize(number)
    @number = number
    validate!
    @speed = 0
    @wagons = []
    @@trains << self
    register_instance
  end

  def stop
    self.speed = 0
  end

  def add_wagon(wagon)
    self.wagons << wagon if wagon.type == self.type && speed.zero?
  end

  def remove_wagon(wagon)
    self.wagons.delete(wagon) if speed.zero?
  end

  def set_route(route)
    @route = route
    @current_station = @route.stations[0]
    @current_station.take_train(self)
  end

  def move_next
    index = @route.stations.find_index(@current_station)
    @current_station.send_train(self)
    @current_station = @route.stations[index + 1]
    @current_station.take_train(self)
  end

  def move_back
    index = @route.stations.find_index(@current_station)
    @current_station.send_train(self)
    @current_station = @route.stations[index - 1]
    @@current_station.arrived_train(self)
  end

  def current_station
    puts "Текущая станция #{@current_station}"
  end

  def show_next
    index = @route.stations.find_index(@current_station)
    puts "Следующая станция #{@route.stations[index + 1].name}"
  end

  def show_back
    index = @route.stations.find_index(@current_station)
    puts "Следующая станция #{@route.stations[index - 1].name if index.positive?}"
  end

  protected

  attr_writer :wagon # пользователь НЕ сможет добавить вагон, НО споможет сделать это в отдельном специально методе

  def validate!
    raise "Number can't be nil" if number.nil?
    raise "Number should be at least 5 symbols" if number.length < 5
    raise "Number has invalid number format" if number !~ NUMBER_FORMAT
  end
end