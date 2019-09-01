require 'pry'
class Owner
  attr_reader :species, :name

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

   def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    dogs.each {|i| i.mood = "happy"}
  end

  def feed_cats
    cats.each {|i| i.mood = "happy"}
  end

  def sell_pets
    #binding.pry
    self.dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end

    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end

  end


  def list_pets
  "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end

end
