class Dog
  
  attr_accessor :mood, :owner
  attr_reader :name 
  @@all = [] 
  def initialize(name, owner)
    @name = name 
    @mood = "nervous"
    @@all << self 
    @owner = owner
    owner.dogs << self
  end 
  
  def Dog.all 
    @@all 
  end 
end
