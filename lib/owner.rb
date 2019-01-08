require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @species = "human"
    @@all << self
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets.map do |pet_type, petArr|
      petArr.map do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
