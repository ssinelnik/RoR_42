=begin
Класс Train (Поезд):
- Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса;
- Может набирать скорость;
- Может возвращать текущую скорость;
- Может тормозить (сбрасывать скорость до нуля);
- Может возвращать количество вагонов;
- Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.;
- Может принимать маршрут следования (объект класса Route);
- При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте;
- Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз;
- Возвращать предыдущую станцию, текущую, следующую, на основе маршрута.
=end
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

class Train

  # readers
  attr_reader :number, :type, :carriages

  #accessors
  attr_accessor :speed, :route

  # initialize
  def initialize(number, type, carriages)
    @number = number
    @type = type
    @carriages = carriages
    @speed = 0
  end

  # stop the train
  def stop
    self.speed = 0
  end

  # add new carriage
  def add_carriages
    @carriages += 1 if speed.zero?
  end

  # remove old carriage
  def remove_carriages
    @carriages -= 1 if speed.zero? && @carriages > 1
  end

  # set route
  def set_route(route) # parameter is .Route class object
    self.route = route
    self.route.stations[0].take_train(self) # call take_train
    @current_station_index = 0
  end

  # current route
  def current_route
    route.stations[@current_station_index]
  end

  # route next station
  def next_station
    route.stations[@current_station_index + 1]
  end

  # route previous station
  def previous_station
    route.stations[@current_station_index - 1] if @current_station_index.positive? # check on positive
  end

  # move forward by route
  def move_forward
    return unless next_station

    current_station.send_train(self)
    next_station.take_train(self)
    @current_station_index += 1
  end

  # move back by route
  def move_back
    return unless previous_station

    current_station.send_train(self)
    previous_station.take_train(self)
    @current_station_index -= 1
  end
end