class Person
    # @count is a CLASS INSTANCE VARIABLE exclusive to Person.
    # Only when you instantiate a Person (not a subclass of Person),
    # the count increases.
    @count = 0
  
    def initialize
      self.class.count += 1
    end
  
    def self.count
      @count
    end
    
    def self.count=(value)
      @count = value
    end
  end
  
  class Worker < Person
    # @count is a CLASS INSTANCE VARIABLE exclusive to Worker.
    # Only when you instantiate a Worker, the count increases.
    @count = 0
  end