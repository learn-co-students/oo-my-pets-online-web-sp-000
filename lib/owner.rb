require 'pry'
class Owner
  attr_accessor :name 
  attr_reader :owner, :pets, :species
    @@all = []
    
  def initialize(species)
   @species = species
   
    @pets = {
      :fishes => [] , 
      :cats => [] , 
      :dogs => []
    }
    @@all << self
  end   
  
  def say_species
    "I am a #{@species}." 
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
  
  def buy_fish(name) 
    @pets[:fishes] << Fish.new(name)   
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish 
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets 
    self.pets.each do |pet| 
      pet.mood = "nervous"
    end 
  end 
  
  def list_pets 
    @pets 
  end 
  
end