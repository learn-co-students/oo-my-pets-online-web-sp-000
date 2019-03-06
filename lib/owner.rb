class Owner
    require "pry"
  attr_reader :species
  attr_accessor :name, :fishes, :dogs, :cats, :pets
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.count
    @@all.count 
  end 
  
  def self.reset_all 
    @@all.clear
  end
  
  def self.all 
    @@all 
  end 
  
  def say_species
    "I am a human."
  end 

  
  def buy_fish(fish_name) 
  fish_name = Fish.new("#{fish_name}")
    if fish_name.is_a?(Fish) == true
      @pets[:fishes] << fish_name
    end
  end 
  
    def buy_cat(cat_name) 
  cat_name = Cat.new("#{cat_name}")
    if cat_name.is_a?(Cat) == true
      @pets[:cats] << cat_name
    end
  end 
    
      def buy_dog(dog_name) 
  dog_name = Dog.new("#{dog_name}")
    if dog_name.is_a?(Dog) == true
      @pets[:dogs] << dog_name
    end
  end 
  
  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end 
  end 
  
   def play_with_cats
     @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end 
  end 
  
    def feed_fish 
     @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    @pets.collect do { objects.collect {|object| object.mood = "nervous"} }
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end 
  
end