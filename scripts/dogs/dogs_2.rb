module DogMixin
    class << self
      def included(base)
        base.extend ClassMethods
      end
    end
  
    module ClassMethods
      def assign(*names)
        class_variable_set(:@@dog_names, names)
      end
      
      def dog_names
        class_variable_get(:@@dog_names)
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
  # => [:r2d2, :posix]
  
  p Emo.dog_names
  # => [:bill, :tom]
  
  p Hater.dog_names
  # => uninitialized class variable @@dog_names in Hater (NameError)
=end