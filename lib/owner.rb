class Owner
  attr_accessor :pets, :name 
  attr_reader :species
  @@all_owners = []
  
  def initialize(name)
    @name =  name
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @species = 'human'
    @@all_owners << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.reset_all 
    @@all_owners.clear
  end
  
  def self.all 
    @@all_owners  
  end
  def self.count
    @@all_owners.length
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end
  
   def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end
  
   def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end
  
   def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end
  
   def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end
  
  def list_pets
    fish_count = 0
    dog_count = 0 
    cat_count = 0 
    
   pets[:fishes].each do |fish|
      fish_count += 1 
    end
   pets[:dogs].each do |dog|
      dog_count += 1 
    end
   pets[:cats].each do |cat|
      cat_count += 1 
    end   
      
    
   return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
  
  def sell_pets 
     pets[:dogs].each do |dog|
      dog.mood = 'nervous'
    end
     pets[:cats].each do |cat|
      cat.mood = 'nervous'
    end
      pets[:fishes].each do |fish|
      fish.mood = 'nervous'
    end
    pets.clear
  end
end