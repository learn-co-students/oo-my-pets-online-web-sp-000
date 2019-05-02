class Owner
  
  @@all = []
  
  attr_reader :species
  attr_accessor :name, :pets
  
  def initialize(given_species)
    @species = given_species
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
    self.pets[:dogs].each{ |dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    self.pets[:cats].each{ |cat| cat.mood = "happy" }
  end
  
  def feed_fish
    self.pets[:fishes].each{ |fish| fish.mood = "happy" }
  end
  
  def sell_pets
    self.pets.keys.each do |key|
      self.pets[key].each{ |pet| pet.mood = "nervous" }
      self.pets.delete(key)
    end
  end
  
  def list_pets
    fish = self.pets[:fishes]
    dogs = self.pets[:dogs]
    cats = self.pets[:cats]
    "I have #{fish.count} fish, #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    all.clear
  end
  

  
end