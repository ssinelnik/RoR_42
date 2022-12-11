module LevelEnvironment
  module ClassMethods
    def create_warrior(name)
      age = rand * 20 + 15   # remember, rand gives a random 0 to 1
      health = [age * 5, 120].min
      strength = [age / 2, 10].min
      Viking.new(name, health, age, strength)  # returned
    end

    def random_name # useful for making new warriors!
      ["Erik","Lars","Leif"].sample
    end

    def silver_to_gold(silver_pieces)
      silver_pieces / 10
    end
  end
end

class Viking < Person
  include LevelEnvironment

  def initialize(name, age, health, strength)
    super(name, health, age, strength)
    @weapon = @@starting_weapon
  end

  def take_damage(damage)
    self.health -= damage # OR we could have said @health -= damage
    self.shout("OUCH!")
  end

  def shout(str)
    puts str
  end

  def sleep
    self.health += 1 unless self.health >= 99   # ! FAIL !
  end

  def heal
    2.times { super }
    puts "Ready for battle!"
  end
end