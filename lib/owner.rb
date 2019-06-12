require "pry"

class Owner
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats=> []}
  end
  
  def self.all
    return @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def species
    @species
  end
  
  def say_species
    return "I am a #{self.species}."
  end
  
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end
  
  def play_with_cats
    pets[:cats].collect {|cat| cat.mood = "happy"}
  end
  
  def walk_dogs
    pets[:dogs].collect {|dog| dog.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |species, pets|
      pets.collect {|pet| pet.mood = "nervous"}
    end
    @pets.clear
  end
      
  def list_pets
    return "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
  
end