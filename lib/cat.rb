class Cat
  
  attr_accessor :owner, :mood, :pets
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.cats << self
    @owner.pets << self
  end
  
  def self.all
    @@all
  end

end
