class CargoWagon < Wagon
  def initialize(number)
    @number = number
    @type = :cargo
  end
end