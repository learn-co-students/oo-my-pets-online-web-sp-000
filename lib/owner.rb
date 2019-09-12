require 'pry'

class Owner
  attr_accessor :pets, :owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
    #binding.pry
  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name_of_cat)
    cat = Cat.new(name_of_cat)
    cat.owner = self
  end

  def buy_dog(name_of_dog)
    dog = Dog.new(name_of_dog)
    dog.owner = self
  end

  def walk_dogs
    Dog.all.each {|m| m.mood = "happy"}
  end

  def feed_cats
    Cat.all.each {|m| m.mood = "happy"}
  end

  def sell_pets
    Dog.all.each {|m| m.mood = "nervous"}
    Cat.all.each {|m| m.mood = "nervous"}
    Dog.all.each {|m| m.owner = nil}
    Cat.all.each {|m| m.owner = nil}
  end

  def list_pets
    #binding.pry
    "I have #{Dog.all.count - 18} dog(s), and #{Cat.all.count - 18} cat(s)."
  end
end
