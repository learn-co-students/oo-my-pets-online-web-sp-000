require "pry"
class Owner
  attr_accessor :pets
  attr_reader :species, :name, :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @pets = []
    @cats = []
    @dogs = []
    @@all << self
    @species = "human"
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size 
  end
  
  def self.reset_all
    @@all.clear
  end
  
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(name)
   cat = Cat.new(name, self)
    cat.mood = "happy"
  
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self)
    dog.mood = "happy"
 
  end
  
  def walk_dogs
  @dogs.map {|cat| cat.is_a?(Cat) 
  cat.mood = "happy" }
  end
  
  def feed_cats
  @cats.map {|dog| dog.is_a?(Dog) 
  dog.mood = "happy" }
  end
  
  def sell_pets
    @pets.map {|pet| pet.mood = "nervous"}
    @pets.map {|pet| pet.owner = nil}
    
  end
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
  
  
end