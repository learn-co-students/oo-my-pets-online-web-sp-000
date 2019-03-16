class Owner
  attr_accessor :name,:pets
  attr_reader :species
  @@all=[]
  @@owners_count=0
  def initialize (species)
    @species=species
    @pets={:fishes=>[], :dogs=>[],:cats=>[]}
    @@all<< self
    @@owners_count+=1
  end
  
   def self.all
     @@all
   end
   
   def self.count
     @@owners_count
   end
   
  def say_species
    "I am a #{self.species}."
  end
  
  def pets
      @pets
  end
  
  def buy_fish(fish)
    add_fish=Fish.new(fish)
    @pets[:fishes]<< add_fish
  end
  
  def buy_cat(cat)
    add_cat=Cat.new(cat)
    @pets[:cats]<< add_cat
  end
  
  def buy_dog(dog)
    add_dog=Dog.new(dog)
    @pets[:dogs]<< add_dog
  end  
  
  def walk_dogs
    @pets[:dogs].each do |dog|
    dog.mood="happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
    cat.mood="happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
    fish.mood="happy"
    end
  end  
  
  def sell_pets
    @pets.each do |key,val|
        @pets[key].each do |arr|
            arr.mood="nervous" 
          end
    end
    @pets.clear
  end 
  
  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
  
  def self.reset_all
    @@owners_count=0
  end
    
end