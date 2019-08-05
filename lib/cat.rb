class Cat
  attr_reader :name
  attr_accessor :mood
  
  @@all = []
  
  def initialize(name,mood)
    @name = name
    @mood = "nervous"
    @@all << self
  end
  
  def cats
    @cats
  end
  
  def self.all
    @@all
  end
end