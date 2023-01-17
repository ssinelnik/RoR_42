class RailRoad
  def initialize
    @stations = []
    @wagons = []
    @trains = []
    @routes = []
  end

  def start
    loop do
      show_menu

      menu = gets.to_i

      case menu
      when 1
        new_station
      when 2
        new_train
      when 3
        puts "Создать, или изменить маршрут? (создать, или изменить)"
        user_choice = gets.chomp.downcase!

        case user_choice
        when "создать"
          new_route
        when "изменить"
          change_route
        end

      when 4
        add_route
      when 5
        add_del_wagons
      when 6
        moving_train
      when 7
        big_list
      when 8
        create_wagon
      end
      break if menu == 0
    end
  end

  def show_menu
    text_menu = "
      Введите 1, если хотите создать станцию.
      Введите 2, если хотите создать поезд.
      Введите 3, если хотите создать маршрут и управлять станциями в нем.
      Введите 4, если хотите назначить маршрут поезду.
      Введите 5, если хотите добавлять или отцеплять вагоны.
      Введите 6, если хотите перемещать поезд по маршруту.
      Введите 7, если хотите посмотреть список станций и список поездов на станции.
      Введите 8, если хотите создать вагон.
      Введите 0, для выхода."
    puts text_menu
  end

  def create_wagon
    puts "Введите тип вагона (text)."
    wagon_type = gets.chomp

    puts "Введите номер вагона (text)"
    wagon_number = gets.chomp.to_i

    if wagon_type == "passenger"
      wagon_number = PassengerTrain.new(wagon_number)
      @wagons << wagon_number
    elsif wagon_type == "cargo"
      wagon_number = CargoWagon.new(wagon_number)
      @wagons << wagon_number
    end
    puts "#{@wagons}" # ?
  end

  # показывает большой список станций и поездов на них
  def big_list
    @stations.each {|station_name| puts "#{station_name.name}"}
    puts "Введите название станции"
    station = gets.chomp
    @stations.find {|station_name| station_name == station}.trains_on_station.each {|train| puts "#{train.number}"}
  end

  def move_train
    puts "Введите номер поезда."
    user_train = gets.chomp

    puts "Введите направление поезда. Впреёд, либо назад."
    user_choice = gets.chomp.downcase!

    if user_choice == "вперёд" || user_choice == "вперед"
      @trains.find {|t| t.number == user_train}.move_next
    elsif user_choice == "назад"
      @trains.find {|t| t.number == user_train}.move_back
    else
      puts "Ошибка!"
    end
    puts "#{@trains.current_station}"
  end

  def add_del_wagons
    puts "Введите 'Добавить', если вы хотите добавить вагон.\n
          Введите 'Удалить', если вы хотите удалить вагон."
    user_choice = gets.chomp.downcase!

    puts "Введите номер вагона."
    wagon = gets.chomp.to_i

    puts "Введите номер поезда."
    train = gets.chomp

    if user_choice == "добавить"
      @trains.find{|t| t.number == train}.take_wagon(@wagons.find{|w| w.number == wagon})
    elsif user_choice == "удалить"
      @trains.find{|t| t.number == train}.remove_wagon(@wagons.find{|w| w.number == wagon})
    else
      puts "Ошибка"
    end
  end

  def add_route
    puts "Введите название марщрута."
    user_route = gets.chomp

    puts "Введите номер поезда."
    user_train = gets.chomp

    @trains.find{|t| t.number == train}.set_route(@routes.find{|r| r.name == route})
    puts "#{all_trains}"
  end

  def change_route
    puts "Введите 'Добавить', если вы хотите добавить вагон.\n
          Введите 'Удалить', если вы хотите удалить вагон."
    user_choice = gets.chomp.downcase!

    puts "Введите название маршрута."
    user_route = gets.chomp.downcase!

    puts "Введите название станции, которую нужно добавить, либо удалить."
    user_station = gets.chomp.downcase!

    if user_choice == "добавить"
      @routes.find{|r| r.name == user_route}.add_station(@stations.find{ |s| s.name == user_station})
    elsif user_choice == "удалить"
      @routes.find{|r| r.name == user_route}.delete_station(@stations.find{ |s| s.name == user_station})
    else
      puts "Ошибка!"
    end
  end

  def new_route
    puts "Введите название маршрута."
    user_route = gets.chomp

    puts "Введите название первой станции."
    user_first = gets.chomp

    puts "Введите название последней станции."
    user_last = gets.chomp

    route = Route.new(user_route, @stations.find{|s| s.name == user_first}, @stations.find{|s| s.name == user_last})
    @routes << route
  end

  def new_train
    puts "Введите номер поезда."
    user_train = gets.chomp

    puts "Введите тип поезда. (passenger or cargo)"
    user_type = gets.chomp

    if user_type == :passenger
    #if user_type == "passenger"
      user_train = PassengerTrain.new(user_train)
      @trains << user_train
      puts "Поезд #{user_train.number} создан."
    elsif user_type == :cargo
      user_train = CargoTrain.new(user_train)
      @trains << user_train
      puts "Поезд #{user_train.number} создан."
    else
      puts "Ошибка!"
    end
   rescue RuntimeError => e
     puts "Проверьте правильность ввода Error: #{e}"
     puts "Повторите ввод"
   retry
  end

  def new_station
    puts "Введите название станции."
    user_station = gets.chomp

    user_station = Station.new(user_station)
    @stations << user_station
    puts "#{@stations}"
  end

end