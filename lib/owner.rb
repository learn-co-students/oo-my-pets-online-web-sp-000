require 'pry'
class Owner
  attr_accessor :name, :pets  
  attr_reader :owner, :species
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
    self.pets.each do |species,pets|
      pets.each do |pet|
        pet.mood = "nervous"
    end 
    pets.clear 
    end 
  end 
  
  def list_pets 
    fish_count = pets[:fishes].count 
    dog_count = pets[:dogs].count 
    cat_count = pets[:cats].count 
    
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end 
  
end