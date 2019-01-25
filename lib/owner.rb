class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def name=(name)
    @name = name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].collect { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].collect { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].collect { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.collect do |type, pets|
      pets.collect { |pet| pet.mood = "nervous" }
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
