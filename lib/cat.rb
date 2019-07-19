class Cat
attr_reader :name
attr_accessor :mood, :owners 

      @@cats = []

  def initialize(name, owner)
    
    @name = name
    @owners = owners
    @mood = "nervous"
    @@cats << self
    owner.cats << self
   
  end
  
  def self.all
    @@cats
  end
  
  def self.count
    @cats.count
  end
  
end