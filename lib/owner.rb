class Owner
  # code goes here
  attr_accessor :pets
  @@all = []
  
  def initialize
    self.pets = {fishes: [], cats: [], dogs:[]}
    @species = "human"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    puts "I am a #{self.species}"
  end
  
  def buy_cat(name)
    self.pets[cats] << Cat.new(name)
  end
  
  def buy_fish(name)
    self.pets[fishes] << Fish.new(name)
  end
  
  def buy_dog(name)
    self.pets[dogs] << Dog.new(name)
  end
  
  def walk_dogs
    self.pets[dogs] = self.pets[dogs].collect {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[cats] = self.pets[cats].collect {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    self.pets[fish] = self.pets[fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    
  end
  
  def list_pets
    puts "I have #{self.pets[fish].length} fish, #{self.pets[dogs].length} dog(s), and #{self.pets[cats].length} cat(s)."
  end
  
end