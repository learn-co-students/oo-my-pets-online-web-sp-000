require "pry"
class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  
  
  @@all = []
  def initialize(name, owner)
    @mood = "nervous"
    @name = name
    @owner = owner
    self.save
  end

  def self.all
    @@all
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end

end