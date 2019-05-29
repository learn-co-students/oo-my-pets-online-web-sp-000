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


#  def play_with_cats
#    @pets.each do |key,value|
#     value.each do |moods|
#      moods.mood = "happy" 
#    end
#     end
#  end

  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}

   end

  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end
  
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
