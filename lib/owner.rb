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
  
end