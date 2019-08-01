class Owner
  @@all = [] 

  attr_accessor 
  attr_reader :name, :species, :dogs, :cats
  
   def initialize(name)
     @species = "human" 
     @@all << self 
     @cats = [] 
     @dogs = []
     @name = name
   end 
  
   def self.all 
     @@all 
   end 
   
   
   def say_species 
     "I am a #{@species}."
   end
   
   def buy_dog(name)
     Dog.new(name, self)
   end 
   
   def buy_cat(name)
     Cat.new(name, self)
     @cats.count
   end
   
   def walk_dogs 
     pets[:dogs].map  {|dog| dog.mood = "happy"} 
   end 
   
   def feed_cats 
     @pets[:cats].each {|cat| cat.mood = "happy"}
   end 
   
   def sell_pets 
     pets.each do |pets, type|
       pets.map {|pet| pet.mood = "nervous"} 
         pet,mood = "nervous"
      end 
      pets.clear
   end 
   
 
   def list_pets 
      num_dogs = pets[:dogs].size 
      num_cats = pets[:cats].size
     return "I have #{num_dogs} dogs(s), and #{num_cats} cats(s)."
   end
   
   def self.count 
     @@all.size 
   end 
   
   def self.reset_all 
     @@all.clear 
   end 
   
end 
 
