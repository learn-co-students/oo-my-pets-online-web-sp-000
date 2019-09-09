require 'pry'


class Owner
  attr_reader :name, :cats, :dogs 
  attr_accessor :owner
  
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @owner = owner 
    @@all << self 
    
  end 
  
  def species
    p "human"
  end 
  
  def say_species
    p "I am a human."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.count 
  end 
  
  def self.reset_all
    @@all.clear 
  end 
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
 
  def buy_cat(name)
    
    Cat.new(name, self)
    
  end
  
  def buy_dog(name)
    
    Dog.new(name, self)
  end 
  
  def walk_dogs

    Dog.all.map do |n, a, mood|
    n.mood = "happy"
    end 
      
  end 
    
  def feed_cats
    Cat.all.map do |n, a, mood|
      n.mood = "happy"
      
    end 
  end 
  
  def sell_pets
    Cat.all.map {|n| n.mood = "nervous"} && Dog.all.map {|n| n.mood = "nervous"}
    
    Cat.all.map {|n| n.owner = nil} && Dog.all.map {|n| n.owner = nil}
    
  end 
 
   
   def list_pets
     
     
     p "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
   end 
   
   
   
   
   
   
   
   
   
   
  
end
