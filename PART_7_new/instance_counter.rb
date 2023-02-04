module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.include Instance
  end
end