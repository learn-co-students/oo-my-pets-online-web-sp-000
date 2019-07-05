class Owner

  attr_accessor :pets
  attr_reader :species, :name           #species/name can't change its species only reads!

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self                         #add all species to our class var array
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.size
  end

  def self.reset_all
    return @@all.clear                  #clear (reset) our owner array
  end

  def say_species
       "I am a #{self.species}."
   end

   def buy_cat(name)
       Cat.new(name, self)
   end

   def buy_dog(name)
       Dog.new(name, self)
   end

   def cats
       Cat.all.select do |cat|
           cat.owner == self
       end
   end

   def dogs
       Dog.all.select do |dog|
           dog.owner == self
       end
   end

   def walk_dogs
       self.dogs.each {|dog| dog.mood = "happy"}
   end

   def feed_cats
       self.cats.each {|cat| cat.mood = "happy"}
   end

   def list_pets
       number_of_dogs = self.dogs.count
       number_of_cats = self.cats.count
       return "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
   end

   def sell_pets
       all_pets = self.cats + self.dogs
       all_pets.each do |pet|
           sell_pet(pet)
       end
   end

   def sell_pet(pet)
       pet.owner = nil
       pet.mood = "nervous"
   end

   def self.reset_all
       self.all.clear
   end

end
