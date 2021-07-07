require 'pry'

class Owner
  attr_reader :name, :species, :cats, :dogs

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{@species}."
  end

  def add_cat(cat)
    @cats << cat
  end

  def add_dog(dog)
    @dogs << dog
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    @cats << cat
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
    @dogs << dog
  end

  def feed_cats
    @cats.each { |cat| cat.mood = "happy"}
  end

  def walk_dogs
    @dogs.each { |dog| dog.mood = "happy"}
  end

  def sell_pets
    @dogs.each { |dog| dog.mood = "nervous"}
    @cats.each { |cat| cat.mood = "nervous"}
    @dogs.each { |dog| dog.owner = nil}
    @cats.each { |cat| cat.owner = nil}
    @cats.clear
    @dogs.clear
  end

  def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

end
