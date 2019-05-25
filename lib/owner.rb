class Owner
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer
  
  ALL = []
  
  def initialize(name)
    @name = name 
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    ALL << self
  end 
  
  def self.all 
    ALL
  end 
  def self.count 
    self.all.count 
  end 
  def self.reset_all 
    self.all.clear 
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
  def say_species 
    "I am a #{@species}." 
  end 
  def walk_dogs 
    @pets[:dogs].each {|d| d.mood = "happy"} 
  end 
  def play_with_cats 
    @pets[:cats].each {|c| c.mood = "happy"} 
  end 
  def feed_fish 
    @pets[:fishes].each {|f| f.mood = "happy"} 
  end 
  def sell_pets 
    @pets.each do |species, pets| 
      pets.each do |pet| 
        pet.mood = "nervous" 
      end 
      pets.clear
    end 
  end 
  def list_pets 
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
end