require "pry"

class Owner
  attr_accessor :owner,:name, :pets
  
   @@all = []
   @@counter = 0
   
  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @owner = owner
    @@all << self
    @@counter += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@counter
  end
  
  def self.reset_all
    @@counter = 0
  end
  
  
  
  def species
    @owner
  end  
  
  def say_species
    "I am a #{@owner}."
  end
  
#  def pets
#    @pets = {fishes: [], cats: [], dogs: []}
#  end

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
    @pets.each do |key,value|
     value.each do |moods|
      moods.mood = "happy" 
    end
     end
  end

  def play_with_cats
    @pets.each do |key,value|
     value.each do |moods|
      moods.mood = "happy" 
    end
     end
  end

  def feed_fish
    @pets.each do |key,value|
     value.each do |moods|
      moods.mood = "happy" 
    end
     end
  end
  
  def sell_pets
    if @pets = {}
    @pets.each do |key,value|
     value.each do |moods|
      moods.mood = "nervous" 
    end
     end

  end
end
end
