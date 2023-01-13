# -- cargo --
require_relative 'wagon'
require_relative 'cargo_wagon'
require_relative 'passenger_wagon'
# -- train --
require_relative 'train'
require_relative 'cargo_train'
require_relative 'passenger_train'
# -- route --
require_relative 'route'
# -- station --
require_relative 'station'
# -- ui --
require_relative 'rail_road'
# -- modules --
require_relative 'russian_railways'
require_relative 'instance_counter'
require_relative 'validate'

RailRoad.new.start