require "pry"
class Owner
  attr_reader :species, :name
  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    self.save
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def species
    @species
  end
    
  def say_species
    "I am a #{species}."
  end
  
  def cats
    Cat.all.select do |d_cat|
      d_cat.owner == self
    end
  end
  
  def buy_cat(a_name)
    new_cat = Cat.new(a_name, self)
  end
  
  def dogs
    Dog.all.select do |d_dog|
      d_dog.owner == self
    end
  end
  
  def buy_dog(a_name)
    new_dog = Dog.new(a_name, self)
  end
  
  def walk_dogs
    Dog.all.each do |d_dog|
      d_dog.mood = "happy"
    end
  end
  
  def feed_cats
    Cat.all.each do |d_cat|
      d_cat.mood = "happy"
    end
  end
  
  def sell_pets
    Dog.all.each do |d_dog|
      d_dog.mood = "nervous"
      d_dog.owner = nil
    end
    Cat.all.each do |d_cat|
      d_cat.mood = "nervous"
      d_cat.owner = nil
    end
    
  end
  
  def list_pets
    "I have #{Dog.all.count} dog(s), and #{Cat.all.count} cat(s)."
  end
  
end