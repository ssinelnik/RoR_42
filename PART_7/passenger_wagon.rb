class PassengerWagon < Wagon
  def initialize(number)
    @number = number
    @type = :passenger
  end
end