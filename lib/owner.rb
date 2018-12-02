class Owner
  @@all=[]
  attr_accessor :pets,:name
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets={fishes: [], cats: [], dogs: []}
  end

  def self.reset_all
    @@all.clear
  end
  def species
    return "human"
  end
  def say_species
    return "I am a #{species}."
  end


  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def walk_dogs
    pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def self.count
    @@all.size
  end
  def self.all
    @@all
  end

  def sell_pets
    pets.collect do |type, pet|
      pet.each do |pet_name|
        pet_name.mood="nervous"
      end
    end
    pets.clear
  end

  def list_pets
      return "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
