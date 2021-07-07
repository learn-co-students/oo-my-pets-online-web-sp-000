class Owner
  attr_reader :name, :species

  @@all = []
  @@cats = []
  @@dogs = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{species}."
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
    @@cats
  end

  def dogs
    @@dogs
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
    @@cats << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
    @@dogs << new_dog
  end
  
   def feed_cats
    @@cats.each {|cat| cat.mood = "happy"}
  end

  def walk_dogs
    @@dogs.each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    @@cats.each {|cat| cat.mood = "nervous"}
    @@dogs.each {|dog| dog.mood = "nervous"}
    @@cats.each {|cat| cat.owner = nil}
    @@dogs.each {|dog| dog.owner = nil}
    @@cats.clear
    @@dogs.clear
  end

  def list_pets
    "I have #{@@dogs.count} dog(s), and #{@@cats.count} cat(s)."
  end

end