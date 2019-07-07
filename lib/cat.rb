class Cat
  attr_reader :name
  attr_accessor :mood, :owner
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    
    @owner.cats << self
    @@all << self
  end
end