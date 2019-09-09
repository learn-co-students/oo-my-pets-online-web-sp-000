require 'pry'

class Owner
  attr_reader :name, :species
  
  @@all = []
  
  
  
  
  def initialize(name = "owner")
    @name = name
    @species = "human"
    @@all << self
    @pets = { :cats => [], :dogs => [] }
  end
  
  def name
    @name
  end
  
  
  def say_species
    "I am a " + @species + "."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def pets
    @pets
  end
  
  def cats
    Cat.all.select do |kitty|
      kitty.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |doggy|
      doggy.owner == self
    end
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end 
  end
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  
  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    
  end
      
end
