module DogMixin
  class << self
    def included(base)
      base.extend ClassMethods
    end
  end

  module ClassMethods
    # Assigns the preferred dog names to a class variable.
    def assign(*names)
      @@dog_names = names
    end

    def dog_names
      @@dog_names
    end
  end
end

class Owner
  include DogMixin
end

class Nerd < Owner
  assign :r2d2, :posix
end

class Emo < Owner
  assign :bill, :tom
end

class Hater < Owner
end

=begin
p Nerd.dog_names
# => [:bill, :tom]

p Emo.dog_names
# => [:bill, :tom]

p Hater.dog_names
# => [:bill, :tom]
=end