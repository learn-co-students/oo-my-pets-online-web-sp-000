class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    dogs = self.pets[:dogs]
    dogs.each do |dog, mood|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.each do |cat, mood|
      cat.mood = "happy"
    end
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.each do |fish, mood|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet, mood|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
