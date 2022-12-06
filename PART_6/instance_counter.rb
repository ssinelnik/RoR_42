module InstanceCounter
    def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
    end
  
    module ClassMethods
      def instance
        @counter ||= 0
      end
  
      def new_instance
        @counter = self.instance + 1
      end
    end
  
    module InstanceMethods
      private
  
      def register_instance
        self.class.new_instance
      end
    end
  end