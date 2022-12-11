class Car
  attr_accessor :speed #GET and SET speed
  attr_accessor :engine_volume #GET and SET engine_volume

#DON'T NEED, BECAUSE WE HAVE attr_accessor  
=begin
  attr_writer :speed #SET speed
  attr_reader :speed #GET speed
  
  attr_writer :engine_volume #SET engine_volume
  attr_reader :engine_volume #GET engine_volume
=end

  #constructor
  def initialize(speed = 0, engine_volume = 1.6)
    @speed = speed
    @engine_volume = engine_volume
  end  

  #method #1 "Start car engine"
  def start_engine
    puts "Wroom!"
  end

 #method #2 "Sound signal"
  def beep
    puts "Beep, beep!"
  end

  #method #3 "Stop"
  def stop
    puts "Stop"
    self.speed = 0
  end

  #method #4 "Go"
  def go
    puts "You are go!"
    self.speed = 50
    beep
  end

#DON'T NEED, BECAUSE WE HAVE attr_writer AND attr_reader
=begin
  #GET method #5 "Speed"
  def speed
    @speed
  end
  
  #GET method #6 "Engine volume"
  def get_engine_volume
    @engine_volume
  end
  
  #SET method #7 "Set speed"
  def speed=(speed)
    @speed = speed
  end
=end
end
