class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def say_species
    specy = self.species
    "I am a #{specy}."
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
  
  def buy_cat(name)
    @cats << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @dogs << Dog.new(name, self)
  end
  
  def walk_dogs
    @dogs.each do |dog|
      dog.mood = 'happy'
    end
  end
  
  def feed_cats
    @cats.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def sell_pets
    pets = @dogs.concat(@cats)
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
    @cats.clear
    @dogs.clear
  end
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
end
