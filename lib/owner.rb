require "pry" 
class Owner
  attr_accessor :name, :owner
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []} 
    @species = species 
    @@all << self 
    @name = name
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
    return "I am a #{species}."
  end 
  def name
    @name
  end 
  def pets
    @pets
  end 
  
  def buy_fish(new_fish)
    fish = Fish.new(new_fish)
    @pets[:fishes] << fish
  end 
  def buy_cat(new_cat)
    cat = Cat.new(new_cat)
    @pets[:cats] << cat
  end 
  def buy_dog(new_dog)
    dog = Dog.new(new_dog)
    @pets[:dogs] << dog
  end 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    # @pets.map do |pet_type, name|
    #   if pet_type == :dogs 
    #     name[0].mood = "happy"
        
    #   end 
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
  def pets=(pets)
    @pets = pets
  end 
  def sell_pets
    pets.each do |key,value|
      value.each do |pet|
        pet.mood = "nervous"
        end 
      end 
      @pets.clear
  end 
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
end 
end 