require 'pry'
class Owner
  attr_reader :name, :species

  @@all = []
  @@cats = []
  @@dogs = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    @@cats
  end

  def dogs
    @@dogs
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
    new_cat.mood = "happy"
    @@cats << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
    new_dog.mood = "happy"
    @@dogs << new_dog
  end

  def walk_dogs
    @@dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @@cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @@cats.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
    @@cats.clear

    @@dogs.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
    @@dogs.clear
  end

  def list_pets
    "I have #{@@dogs.count} dog(s), and #{@@cats.count} cat(s)."
  end

end
