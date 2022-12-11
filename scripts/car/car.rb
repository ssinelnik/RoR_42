module FuelTank
	def fill_tank(level)
		self.fuel_tank = level
	end

	def fuel_level
		self.fuel_tank
	end
	
	protected
	attr_accessor :fuel_tank 
end

module Debugger # == MyModule = Module.new do ... end
	# self - в данном случае означает, что этот метод не включается в тот класс, где мы прописываем подключение модуля, а он является методом самого модуля
	def self.included(base) # base - параметр, в который мы передаём класс, где включён модуль
			base.extend ClassMethods # покдлючаем в хук методы класса
			base.send :include, InstanceMethods # подключаем в хук методы экземляра класса
	end

	module ClassMethods
		def debug(log)
			puts "!!!DEBUG: #{log}!!!"
		end
	end

	module InstanceMethods
		def debug(log)
			self.class.debug(log)
		end

		def print_class
			puts self.class
		end
	end
end

class Car # == Car = Class.new do .. end
	include FuelTank
	# можно это заменить:
	# extend Debugger::ClassMethods
	# include Debugger::InstanceMethods
	# на это:
  include Debugger 


  attr_reader :current_rpm

  @@instances  = 0

  def self.instances
    @@instances
  end

  debug 'start interface'

  def initialize
    @current_rpm = 0
    @@instances += 1
    debug 'initialize'
  end

  def start_engine
    start_engine! if engine_stopped?
  end

  def engine_stopped?
    current_rpm.zero?
  end
  
  debug 'end interface'

  protected

  attr_writer :current_rpm

  def initial_rpm
    700
  end

  def start_engine!
    self.current_rpm = initial_rpm
  end
end

class MotorBike
	include FuelTank
	include Debugger

	debug 'MotorBike class'
end