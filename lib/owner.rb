require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = [ ]
  
  def initialize(name)
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

#Class Methods 

  def self.all 
    @@all
  end 
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.size
  end
  
#Instance Methods

  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(fish)
    fish = Fish.new(fish)
    pets[:fishes] << fish
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat)
    pets[:cats] << cat
  end
  
  def buy_dog (dog)
    dog = Dog.new(dog)
    pets[:dogs] << dog
  end
  
  def walk_dogs 
    pets[:dogs].each do |dog_obj|
      dog_obj.tap{|dog| dog.mood = "happy"}
    end
  end
  
  def play_with_cats 
    pets[:cats].each do |cat_obj|
      cat_obj.tap{|cat| cat.mood = "happy"}
    end
  end
  
  def feed_fish 
    pets[:fishes].each do |fish_obj|
      fish_obj.tap{|fish| fish.mood = "happy"}
    end
  end
  
  def sell_pets 
    pets.each do |pet_type_key, pet_type_value|
      pet_type_value.each do |pet_object|
        pet_object.mood = "nervous"
      end
    end
    self.pets.clear
  end
  
  def list_pets 
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
  
    
  
end