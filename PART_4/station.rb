=begin
Класс Station (Станция):
- Имеет название, которое указывается при ее создании;
- Может принимать поезда (по одному за раз);
- Может возвращать список всех поездов на станции, находящиеся в текущий момент;
- Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских;
- Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).
=end
# -----------------------------------------------------------------------------------------------------------------

class Station

  # readers
  attr_reader :trains, :name

  # initialize
  def initialize(name)
    @name = name
    @trains = []
  end

  # take train to station
  def take_train(train)
    trains << train # << - operator, that add train to trains
  end

  # send train from station
  def send_train(train)
    trains.delete(train)
  end

  # show train by type
  def train_by_type(type)
    trains.each { |train| train.type == type }.size
  end
end