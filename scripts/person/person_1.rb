class Person
    # @@count is a class variable shared by Person and every subclass.
    # When you instantiate a Person or any kind of Person, such as a Worker,
    # the count increases.
    @@count = 0
  
    def initialize
      self.class.count += 1
    end
  
    def self.count
      @@count
    end
    
    def self.count=(value)
      @@count = value
    end
  end
  
  class Worker < Person
  end