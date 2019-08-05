require 'pry'

class Owner
  attr_reader :species, :name
  
  
 
 @@all = []


  def initialize(name)
    @name = name
    @species = species
    @@all << self
  end
  
  
  def sell_pets
    self.dogs.each do |pet| 
    pet.mood = "nervous"
    pet.owner = nil
    end
    self.cats.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  def list_pets
    "I have #{dogs.size} dog(s), and #{cats.size} cat(s)."
  end
  
  def walk_dogs
      self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

 def feed_cats
      self.cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  
  def buy_cat(name)
  cat = Cat.new(name,self)
  end
  
   def buy_dog(name)
  dog = Dog.new(name,self)
  end
  
  def cats
    Cat.all.select do |cat| 
      cat.owner == self
    end
  end
  
   def dogs
    Dog.all.select do |dog| 
      dog.owner == self
    end
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a #{self.species}."
  end
   
  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end
  
end