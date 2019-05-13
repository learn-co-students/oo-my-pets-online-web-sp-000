require 'pry'
class Owner
  
  attr_accessor :owner, :count, :name, :pets, :mood
  attr_reader :species
  attr_writer :mood
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @name = name
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end
  
  def self.count
    @@all.count
  end  
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    @species = "I am a #{species}."
  end
  
  def pets
    @pets
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end
 
  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].each {|f| f.mood = "happy"}
  end
  
  def sell_pets
    pets[:dogs].each {|d| d.mood = "nervous"}
    pets[:cats].each {|c| c.mood = "nervous"}
    pets[:fishes].each {|c| c.mood = "nervous"}
    pets.clear
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end 
end