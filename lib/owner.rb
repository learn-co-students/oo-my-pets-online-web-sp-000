require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_accessor :name, :pets
  def initialize(name)
    @name=name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    @@all.size 
  end
  def self.reset_all
    @@all = []
  end
  
  def species
    "human"
  end
  def say_species
    return "I am a human."
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
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets 
    @pets.each do |pet|
      pet[1].each do |animal|
          animal.mood = "nervous"
        end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def list_pets 
     return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
end