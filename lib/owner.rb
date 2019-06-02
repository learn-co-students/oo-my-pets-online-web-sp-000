class Owner
  attr_accessor :pets, :name 
  attr_reader :species 
  
  
  @@all = []
  @@count = 0 
  @@reset_all = [] 
  
  def initialize(species)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
    @@count += 1 
  end 
  
  def species=(species)
    @species = species
    raise NoMethodError if !species.nil?
  end 
  
  def say_species
     "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end 
  
  def self.count
    @@count 
  end 
  
  def self.reset_all
    @@reset_all 
    @@count = 0 
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat 
  end 
  
  def buy_dog(name)
     dog = Dog.new(name)
    @pets[:dogs] << dog 
  end 
  
  def buy_fish(name)
     fish = Fish.new(name)
    @pets[:fishes] << fish  
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
    @pets[:dogs].each do |pet|
      pet.mood = "nervous"
    end 
    @pets[:cats].each do |pet|
      pet.mood = "nervous"
    end
    @pets[:fishes].each do |pet|
      pet.mood = "nervous"
    end 
    @pets.clear
  end
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
  
  
end