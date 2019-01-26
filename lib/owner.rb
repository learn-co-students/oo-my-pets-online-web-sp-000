class Owner
  attr_reader :name
  attr_accessor :pets
  @@all = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  def species
    @species
  end
  def say_species
    return "I am a #{@species}."
  end
  def name=(name)
    @name = name
  end
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
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
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets = []
  end
  def list_pets
    dogs = @pets[:dogs].count
    fish = @pets[:fishes].count
    cats = @pets[:cats].count
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def self.reset_all
    @@all = []
  end
end
