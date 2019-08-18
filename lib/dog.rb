require "pry"
class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  def initialize(name, owner)
    @mood = "nervous"
    @name = name
    @owner = owner
    self.save
  end
  
  def name
    @name
  end
  
  def save
    @@all << self
    self
  end
  
  def owner
    @owner
  end
  
end