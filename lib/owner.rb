class Owner
  
  attr_accessor :owner, :pets, :name
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    #@@all.count {|x| x.species}
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    @@all.each {|x| x.species}
    "I am a #{species}."
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
    @pets[:dogs].each {|x| x.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each {|x| x.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|x| x.mood = "happy"}
  end
  
  def sell_pets
    @pets.each {|key, value| value.each {|x| x.mood = "nervous"}} 
    @pets.clear
  end
  
  def list_pets
    fish = @pets[:fishes].length 
    dog = @pets[:dogs].length 
    cat = @pets[:cats].length 
    "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end
  
end