class Cat
  attr_accessor :owner, :mood
@@all = []
def initialize(name, owner)
  @name = name
  @name.freeze
  @owner = owner
  @owner.cats << self
  @@all << name
  @mood = "nervous"
end

def name
  @name
end
def clear_owner
  self.owner = nil
end
def self.all
  @@all
end


end
