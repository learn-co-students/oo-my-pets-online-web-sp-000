class Cat

  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @name = name 
    @mood = "nervous"
    @@all << self
    @owner = owner 
    self.owner
    owner.cats << self 
  end
  
  def self.all 
    @@all
  end 
end
