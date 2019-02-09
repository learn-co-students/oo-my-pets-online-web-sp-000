require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets


  @@Owners = []

  def initialize(species)
    @species = species
    @@Owners << self
  @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @dog = Dog.new(name)
    pets[:dogs] << @dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cats| cats.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

def sell_pets
  pets[:fishes].each {|fish| fish.mood = "nervous"}
  pets[:cats].each {|cat| cat.mood = "nervous"}
  pets[:dogs].each {|dog| dog.mood = "nervous"}
  pets[:fishes] = []
  pets[:cats] = []
  pets[:dogs] = []
end

def list_pets
   "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end

  def self.all
    @@Owners
  end

  def self.count
    @@Owners.count
  end

  def self.reset_all
    @@Owners = []
  end


end
