require 'pry'

class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@all << self
    self.owner.add_cat(self)
    
  end

  def mood=(mood)
    @mood = mood
  end

  def owner
    @owner
  end

  def self.all
    @@all
  end

end
