require_relative 'instance_counter'
require_relative 'validate'

class Station
  include InstanceCounter
  include Validate

  attr_reader :name, :trains

  @@stations = []
  
  def self.all
    @@stations
  end

  def initialize(name)
    @name = name
    validate!
    @trains = []
    @@stations << self
    register_instance
  end

  def take_train(train)
    @trains << train
  end

  def send_train(train)
    @trains.delete(train)
  end

  def train_by_type(type)
    @trains_on_station.each { |train| puts train.number if train.kind_of?(type) }
  end

  private

  def validate!
    raise "Number can't be nil" if name.nil?
  end

end