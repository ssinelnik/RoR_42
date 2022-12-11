class Car
  attr_reader :current_rpm
  attr_accessor :number
  
  NUMBER_FORMAT = /^[а-я]{1}\d{3}[а-я]{2}$/i

  def initialize(number)
    @current_rpm = 0
    @number = number
    validate!
  end

  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
      current_rpm.zero?
  end

# not use
=begin
  def valid? # if we change object after initialize, method valid can check valid of this object
    validate!
  rescue
    false
  end
=end

# use
  def valid?
    validate!
    true
  rescue
    false
  end

  protected

# not use
=begin
  def validate! # method to 'throw' exceptions
    raise "Number can't be nil" if number.nil?
    raise "Number should be at least 6 symbols" if number.length < 6
    raise "Number has invalid format" if number !~ NUMBER_FORMAT # 'i' mean, that regular exception is not sensitive fo CAPS
    true
  end
=end

# use
def validate!
  raise "Number can't be nil" if number.nil?
  raise "Number should be at least 6 symbols" if number.length < 6
  raise "Number has invalid format" if number !~ NUMBER_FORMAT
end

  attr_writer :current_rpm

  def initial_rpm
    700
  end

  def start_engine!
    self.current_rpm = initial_rpm
  end
end