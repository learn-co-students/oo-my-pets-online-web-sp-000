class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners=[]

   def initialize(species, pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @pets = pets
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

   def say_species
    "I am a #{@species}."
   end

   def buy_cat(cat)
    @pets[:cats]<<Cat.new(cat)
   end

   def buy_dog(dog)
    @pets[:dogs]<<Dog.new(dog)
   end

   def buy_fish(fish)
    @pets[:fishes]<<Fish.new(fish)
   end

   def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
   end

   def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
   end

   def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
   end

   def sell_pets
     @pets.collect do |species, instances|
       instances.each do |pet|
         pet.mood = "nervous"
       end
       instances.clear
     end
   end

   def list_pets
     num_dogs = @pets[:dogs].size
     num_cats = @pets[:cats].size
     num_fish = @pets[:fishes].size
     return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
   end
end
