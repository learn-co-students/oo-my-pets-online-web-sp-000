require 'pry'
class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    #@pets = {:cats => [], :dogs => []}
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
    Cat.all.select {|c| c.owner == self}
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def dogs
    Dog.all.select {|d| d.owner == self}
  end

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

  def walk_dogs
    dogs.each do |d|
      d.mood = "happy"
    end
  end

  def feed_cats
    cats.each do |c|
      c.mood = "happy"
    end
  end

  def sell_pets
    dogs.each do |d|
      d.mood = "nervous"
      d.owner = nil
    end
    cats.each do |c|
      c.mood = "nervous"
      c.owner = nil
    end
  end
end
