class Cat

attr_accessor :mood, :owner
attr_reader :name
      @@cats = []

  def initialize(name, owner)
    
    @name = name
    @mood = "nervous"
    @@cats << self
    owner.cats << self
   
  end
  
  def self.all
    @@cats
  end
  
  
end