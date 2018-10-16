require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
    # binding.pry
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      # binding.pry
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cats|
      cats.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pet|
      pet.each do |animal|
        animal.mood = "nervous"
      end
    pet.clear
    end
  end

  def list_pets
    # binding.pry
    fish = pets[:fishes].size
    dogs = pets[:dogs].size
    cats = pets[:cats].size

    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end



end
