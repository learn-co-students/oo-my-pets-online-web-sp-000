require('pry')

class Owner

  attr_reader :species, :name
  @@all = []



  def initialize(name)
    @name = name
    @@all << self
    @species = "human"

      @cats = []

      @dogs = []
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end


  def cats
    @cats
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end

  def dogs
    @dogs
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each { |dog|
      dog.mood = "happy"
    }
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end
end # of owner
