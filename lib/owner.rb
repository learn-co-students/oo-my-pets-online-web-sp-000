class Owner
  require 'pry'
  attr_accessor :dogs, :cats
  attr_reader :species, :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  
  def walk_dogs
    @dogs.each { |d| d.mood = "happy" }
  end
  
  def feed_cats
    @cats.each { |c| c.mood = "happy" }
  end
  
  def sell_pets
    @dogs.each do |d|
      d.mood = 'nervous'
      d.owner = nil
    end
    
    @cats.each do |c|
      c.mood = 'nervous'
      c.owner = nil
    end
    
    @dogs.clear
    @cats.clear
  end
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
end