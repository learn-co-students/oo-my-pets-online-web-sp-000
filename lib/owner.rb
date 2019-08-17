class Owner
  
  attr_accessor :pets
  attr_reader :name
  
      @@all = []

  
  def initialize(name)
    @name = name
    @species = species
    @@all << self
    @cats = []
    @dogs = []
    @pets = []
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    return "I am a #{species}." 
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    @cats
  end
  
  def dogs
    @dogs
  end
  
  def buy_cat(name)
   Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each do |o|
      o.mood = "nervous"
      o.owner = nil
      cats.shift
      dogs.shift
    end
  end
  
  def list_pets
    buy_cat(name)
    buy_dog(name)
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
  
end
