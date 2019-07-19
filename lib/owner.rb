class Owner

attr_reader :species, :owners, :name
attr_accessor :cats, :dogs, :pets

@@owners = []

def initialize(name)
      @name = name
      @species = "human"
      @mood = "nervous"
      @dogs = []
      @cats = []
      @pets = { cats: [], dogs: []}
      @@owners << self
    end
    
    def say_species
      "I am a human."
    end
    
     def self.all
    @@owners
    end
  
   def self.reset_all
    @@owners = []
   end

  def self.count
    @@owners.count
  end
  
  def buy_cat(name)
   cat = Cat.new(name, self)
   @pets[:cats] << cat
 end

  def buy_dog(name)
    dog = Dog.new(name, self)
   @pets[:dogs] << dog
 end
 

 def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
  end
end

def feed_cats
    cats.each do |cat|
    cat.mood = "happy"
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
    return "I have  #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
  
  
end
