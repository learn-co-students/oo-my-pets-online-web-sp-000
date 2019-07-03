class Dog
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, owner, mood = "nervous")        #Dog init with a name and nervous mood
    @name = name
    @mood = mood
    @owner = owner
    @@all << self
  end

  def self.all
    return @@all
  end
end
