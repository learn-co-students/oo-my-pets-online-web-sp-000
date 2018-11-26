class Owner
  attr_accessor :pets, :fish, :cat, :dog, :name
  @@owners = []
  

  def initialize (name)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@owners << self  
    @species = "human"   
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners = []
  end
  
  def species 
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish (fishName)
    fishNew = Fish.new(fishName)
    @pets[:fishes] << fishNew
  end

  def buy_cat (catName)
    catNew = Cat.new(catName)
    @pets[:cats] << catNew
  end

  def buy_dog (dogName)
    dogNew = Dog.new(dogName)
    @pets[:dogs] << dogNew
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
   @pets.each do |type, name|
      name.each do |petInstance|
        petInstance.mood = "nervous"    
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets 
   "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end