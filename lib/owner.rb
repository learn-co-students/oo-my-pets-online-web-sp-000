class Owner
  
  attr_accessor :cat, :dog
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    p "I am a #{@species}."
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
    Cat.all.select {|pet| pet.owner == self}
  end
  
  def dogs 
    Dog.all.select {|pet| pet.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    Dog.all.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    Dog.all.each {|dog|
    dog.mood = "nervous"
    dog.owner = nil }
    Cat.all.each {|cat|
    cat.mood = "nervous"
    cat.owner = nil}
  end
  
  def list_pets
    p "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
end
