require "pry"

class Owner
  # code goes here
attr_accessor :dogs, :cats
attr_reader :species, :name

@@all = []

def initialize(name, species = "human")
  @name = name
  @species = species
  @@all << self
  @cats = []
  @dogs = []
end

def self.all
  @@all
end

def self.count
  @@all.size
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{@species}."
end

def buy_cat(name)
   Cat.new(name, self)
end

def cats
  @cats
end

def feed_cats
  @cats.collect do |cat|
    cat.mood = "happy"
  end
end

def buy_dog(name)
   Dog.new(name, self)
end

def dogs
  @dogs
end

def walk_dogs
  @dogs.collect do |dog|
    dog.mood = "happy"
  end
  
def sell_pets
  @dogs.each do |dog|
    dog.mood = "nervous"
    dog.owner = nil
  end
  @cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
  end
end

def list_pets
  "I have #{@dogs.size} dog(s), and #{@cats.size} cat(s)."
end

end

end
