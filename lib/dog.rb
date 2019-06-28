



class Dog
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []
  def initialize(name, mood = "nervous", owner)
    @mood = mood
    @owner = owner
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
end














# class Dog
#   attr_reader :name
#   attr_accessor :mood
#   def initialize(name, mood = "nervous")
#     @mood = mood
#     @name = name
#   end
# end
