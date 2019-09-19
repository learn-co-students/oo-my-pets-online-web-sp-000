class Owner
  
  attr_accessor :cat, :dog
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    p "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    new_arr = []
    new_arr << Cat.all.each {|pet| pet.owner == Owner.name}
    new_arr
  end
  
  def dogs 
    Dog.all.each {|pet| pet.owner == Owner.name}
  end
  
  def buy_cat(name)
    
  end
  
  def buy_dog(name)
    
  end
  
  def walk_dogs
    
  end
  
  def feed_cats
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
  
end
