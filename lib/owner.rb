require "pry"

class Owner
  attr_accessor :name, :pets

  @@all_owners = []
  
  def initialize(species)
    @@all_owners << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats=> []} 
  end
  
  def self.all
    @@all_owners
  end
  
  def self.count
    @@all_owners.length
  end
  
  def self.reset_all
    @@all_owners.clear
    
  end
  
  def species
    @species
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def pets
    @pets
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each{|d| d.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each{|c| c.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each{|f| f.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |species, pet|
      pet.each do |p|
        p.mood = "nervous"
      end
      pet.clear
    end
  end
  
  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end