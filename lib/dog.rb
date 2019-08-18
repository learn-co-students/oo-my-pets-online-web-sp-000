require "pry"
class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  def initialize(name, owner)
    @mood = "nervous"
    @name = name
    @owner = owner
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
end