class Owner
  # code goes here
  
  attr_reader :species 
  attr_accessor :name, :fish, :pets 
  
  @@all = []
   
  def initialize(species)
    @species = species 
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}

  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.length 
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  def say_species
    return ("I am a human.")
  end 

  
  def buy_fish(fishname)
    new_fish = Fish.new(fishname)
    @pets[:fishes] << new_fish
   end 
  
  def buy_cat(catname)
    new_cat = Cat.new(catname)
    @pets[:cats] << new_cat 
  end 
  
  def buy_dog(dogname)
    new_dog = Dog.new(dogname)
    @pets[:dogs] << new_dog 
  end 
  
  def walk_dogs 
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats 
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end 
  
   def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end  
  
  def sell_pets 
    @pets.each do |key, value| 
      value.each {|pet| pet.mood = "nervous"}
    end 
    @pets = {}
  end 
  
  def list_pets 
    num_fishes = @pets[:fishes].size
    num_cats = @pets[:cats].size
    num_dogs = @pets[:dogs].size
    return "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end 
  
end