class Dog
  attr_accessor :owner, :mood
@@all = []
def initialize(name, owner)
  @name = name
  @name.freeze
  @owner = owner
  @owner.dogs << self
  @@all << name
  @mood = "nervous"
end
def name
  @name
end
# def walk_dogs
#   # @owner.each do |dog|
#    @name.mood = "happy"
#     @mood
#   # end
# end

def self.all
  @@all
end
def clear_owner
  self.owner = nil
end

end
