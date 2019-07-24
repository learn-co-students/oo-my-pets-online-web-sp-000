require 'pry'

class Owner
  attr_reader :species, :owners, :name
  attr_accessor :pets, :dogs, :cats

  @@owners = []

  def initialize(name)
    @species = "human"
    @name = name
    @cats = []
    @dogs = []
    @pets = { dogs: [], cats: []}
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat, self)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog, self)
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"

    end
  end

  def feed_cats
    @cats.map do |cat|
      cat.mood = "happy"
    end
  end


  def list_pets
    "I have #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    pets_arr = dogs + cats
    pets_arr.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
     pets.clear
  end

end
