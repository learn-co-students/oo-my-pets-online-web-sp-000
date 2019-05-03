require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end
  def self.all
    @@all
  end
  def self.count
    self.all.length
  end
  def self.reset_all
    self.all.clear
  end
  def say_species
    "I am a #{@species}."
  end
  def buy_fish (name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  def buy_cat (name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  def buy_dog (name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end
  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = 'nervous'
    end
    @pets[:dogs].clear
    @pets[:cats].each do |cat|
      cat.mood = 'nervous'
    end
    @pets[:cats].clear
    @pets[:fishes].each do |fish|
      fish.mood = 'nervous'
    end
    @pets[:fishes].clear
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
