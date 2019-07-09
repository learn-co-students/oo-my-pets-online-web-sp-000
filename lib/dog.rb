class Dog
  attr_accessor :owner, :mood
@@all = []
def initialize(name, owner)
  @name = name
  @name.freeze
  @owner = owner
  @@all << name
  @mood = "nervous"
end

def name
  @name
end
def self.walk_dogs
  @@all.each do |dog|
    dog.mood = "happy"
  end
end

def self.all
  @@all
end

end
