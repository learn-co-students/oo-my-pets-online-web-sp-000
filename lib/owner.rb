class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def initialize(species)
    @species = species
    @pets = {
      :cats => [],
      :dogs => [],
      :fishes => []
    }
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end
  
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
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
    @pets.each do |animal_name, animal_array|
      animal_array.each do |animal|
        animal.mood = "nervous"
      end
      animal_array.clear
    end
  end
  
  def list_pets
    no_fish = @pets[:fishes].length
    no_dogs = @pets[:dogs].length
    no_cats = @pets[:cats].length
    "I have #{no_fish} fish, #{no_dogs} dog(s), and #{no_cats} cat(s)."

  end
end