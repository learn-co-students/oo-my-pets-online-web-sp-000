
# require "cat"
# require "dog"

class Owner
  @@all = [] #this will keep track of all owners in class
  
  attr_accessor :pets
  attr_reader :name, :species
  
  def initialize (name)
    @name = name
    @species = "human"
    @pets = []
    @@all << self
  end
  
  def name
    @name
  end

  def say_species
    "I am a #{@species}."
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
  
  def cats
    Cat.all.select {|i| i.owner == self}
  end
  
  def dogs
    Dog.all.select {|i| i.owner == self}
  end
  
  def buy_cat(catName) #I was assuming the cat already existed!
    Cat.new(catName, self)
  end
  
  def buy_dog(dogName) #I was assuming the dog already existed!
    Dog.new(dogName, self)
  end
  
  def walk_dogs
    dogArray = Dog.all.select {|i| i.owner == self}
    dogArray.each {|i| i.mood = "happy"}
  end
  
  def feed_cats
    catArray = Cat.all.select {|i| i.owner == self}
    catArray.each {|i| i.mood = "happy"}
  end
  
  def list_pets #can be refactored further.
    ownedDogs = Dog.all.select {|i| i.owner == self}
    ownedCats = Cat.all.select {|i| i.owner == self}
    return "I have #{ownedDogs.count} dog(s), and #{ownedCats.count} cat(s)."
  end
  
  def sell_pets
    self.cats.each do |i|
      i.mood = "nervous"
      i.owner = nil
    end
    self.dogs.each do |i|
      i.mood = "nervous"
      i.owner = nil
    end
  end
  
end

# rspec spec/01_owner_spec.rb
# rspec spec/02_cat_spec.rb
# rspec spec/03_dog_spec.rb