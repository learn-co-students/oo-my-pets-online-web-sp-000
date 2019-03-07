class Owner
  ##instance methods##
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    purchased_fish = Fish.new(name)
    @pets[:fishes] << purchased_fish
  end

  def buy_cat(name)
    purchased_cat = Cat.new(name)
    @pets[:cats] << purchased_cat
  end

  def buy_dog(name)
    purchased_dog = Dog.new(name)
    @pets[:dogs] << purchased_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    num_fish = @pets[:fishes].size
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

end
