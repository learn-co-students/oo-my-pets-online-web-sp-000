require 'pry'
class Owner 
  attr_accessor :owner, :pets, :name, :fish, :dog, :cat, :mood   
  attr_reader :species
  
  @@owners = []
  
  def initialize(owner)
    @owner = owner
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@owners << self
  end
  
  def self.all 
    @@owners 
  end 
  
  def self.count
    @@owners.size 
  end 
  
  def self.reset_all 
    @@owners.clear 
  end 
  
  def name
    @name 
  end 
  
  def species 
    @species = owner 
  end 
  
  def say_species 
    return "I am a #{species}."
  end 
  
  def buy_fish(new_fish)
    @pets[:fishes] << Fish.new(new_fish)
  end 
  
  def buy_cat(new_cat)
    @pets[:cats] << Cat.new(new_cat)
  end
  
  def buy_dog(new_dog)
    @pets[:dogs] << Dog.new(new_dog)
  end
  
  def walk_dogs
      @pets[:dogs].each do |change_mood| 
      change_mood.mood = "happy"
    end
  end
  
  def play_with_cats 
     @pets[:cats].each do |change_mood| 
      change_mood.mood = "happy"
    end
  end 
  
  def feed_fish 
     @pets[:fishes].each do |change_mood| 
      change_mood.mood = "happy"
    end 
  end 
  
  def sell_pets
    #binding.pry
    
    pets.each do |type_pet, pet| 
      pet.each do |change_mood| 
        change_mood.mood = "nervous" 
    end 
  end
    pets.each do |type_pet, pet| 
      pet.clear
    end 
    
    
   
  
  
end 
  
    
    
  
  
  
  
  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end 
end 
  
  
  
  