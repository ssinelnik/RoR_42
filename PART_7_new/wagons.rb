class Wagons
  # connect include's

  def initialize(number)
    @number = number
    validate!
  end

  protected

  def validate!
    raise "Number cant't be nil" if number.nil?
  end
end