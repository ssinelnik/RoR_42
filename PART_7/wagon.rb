require_relative 'russian_railways'
require_relative 'instance_counter'
require_relative 'validate'

class Wagon
  include RussianRailways
  include InstanceCounter
  include Validate

  def initialize(number)
    @number = number
    validate!
  end

  protected

  def validate!
    raise "Number can't be nil" if number.nil?
  end
end 