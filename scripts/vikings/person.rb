class Person
  MAX_HEALTH = 120

  attr_accessor :name, :age, :health, :strength

  @@starting_weapon = "iron sword"
  @@starting_health = 100

  def initialize(name, age, health, strength)
    @name = name
    @age = age
    @health = @@starting_health
    @strength = strength
  end

  def heal
    self.health += 1 unless self.health + 1 > MAX_HEALTH
  end
end