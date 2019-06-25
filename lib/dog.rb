class Dog

attr_accessor :mood, :owner
attr_reader :name

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @owner.dogs << self
  end

  @@all = []

  def self.all
    @@all
  end

  def mood
    @mood
  end

end
