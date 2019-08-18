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
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def mood
    @mood
  end
  
  def mood=(a_mood)
    @mood = a_mood
  end
  
end