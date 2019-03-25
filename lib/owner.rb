require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name="Katie")
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs:[]}
    @@all << self
  end

  def name
    @name
  end


  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  #def species(species="human")
  #  @species = species
  #end

  def say_species
     "I am a #{@species}."
  end

#def pets
#@pets = {fishes: [], cats: [], dogs:[]}
#binding.pry
#end

def buy_fish(name)
  fish = Fish.new(name)
  fish.owner = self
  @pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
  cat.owner = self
  @pets[:cats] << cat
end

def buy_dog(name)
  dog = Dog.new(name)
  dog.owner = self
  @pets[:dogs] << dog
end

def walk_dogs
@pets[:dogs].each { |dog| dog.mood = "happy" }
end

def play_with_cats
@pets[:cats].each { |cat| cat.mood = "happy" }
end

def feed_fish
@pets[:fishes].each { |fish| fish.mood = "happy" }
end

def sell_pets
@pets[:fishes].each { |fish| fish.mood = "nervous" }
@pets[:cats].each { |cat| cat.mood = "nervous" }
@pets[:dogs].each { |dog| dog.mood = "nervous" }
@pets = {fishes: [], cats: [], dogs:[]}
end

def list_pets
return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
