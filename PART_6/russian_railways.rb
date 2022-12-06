module RussianRailways
  class << self
    def included(base)
      base.extend ClassMethods
      base.include InstanceMethods
    end
  end

  module ClassMethods
    def assign_brand(name)
      @brand_name = name 
    end

    def brand_name
      if @brand_name.nil?
        puts "NO NAME"
      else
        @brand_name
      end
    end
  end

  module InstanceMethods
    # empty now ...
  end
end